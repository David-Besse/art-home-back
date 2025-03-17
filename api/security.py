"""
Security functions
"""

from datetime import datetime, timedelta
from typing import Optional
from jose import jwt, JWTError
from passlib.context import CryptContext
from .config import settings

pwd_context = CryptContext(schemes=["bcrypt"], deprecated="auto")

SECRET_KEY = settings.secret_key
ALGORITHM = "HS256"
ACCESS_TOKEN_EXPIRE_MINUTES = 15
REFRESH_TOKEN_EXPIRE_MINUTES = 60 * 24 * 7  # 7 jours


def create_access_token(data: dict, expires_delta: Optional[timedelta] = None):
    """
    Create a new access token with a given data payload and optional expiration delta.

    Args:
    data (dict): The data to include in the token's payload.
    expires_delta (Optional[timedelta]): Optional expiration time delta for the token.
                                         If not provided, defaults to ACCESS_TOKEN_EXPIRE_MINUTES.

    Returns:
    str: The encoded JWT access token.
    """

    to_encode = data.copy()
    if expires_delta:
        expire = datetime.utcnow() + expires_delta
    else:
        expire = datetime.utcnow() + timedelta(minutes=ACCESS_TOKEN_EXPIRE_MINUTES)
    to_encode.update({"exp": expire})
    encoded_jwt = jwt.encode(to_encode, SECRET_KEY, algorithm=ALGORITHM)
    return encoded_jwt


def create_refresh_token(data: dict, expires_delta: Optional[timedelta] = None):
    """
    Create a new refresh token with a given data payload and optional expiration delta.

    Args:
    data (dict): The data to include in the token's payload.
    expires_delta (Optional[timedelta]): Optional expiration time delta for the token.
                                         If not provided, defaults to REFRESH_TOKEN_EXPIRE_MINUTES.

    Returns:
    str: The encoded JWT refresh token.
    """
    to_encode = data.copy()
    if expires_delta:
        expire = datetime.utcnow() + expires_delta
    else:
        expire = datetime.utcnow() + timedelta(minutes=REFRESH_TOKEN_EXPIRE_MINUTES)
    to_encode.update({"exp": expire})
    encoded_jwt = jwt.encode(to_encode, SECRET_KEY, algorithm=ALGORITHM)
    return encoded_jwt


def verify_password(plain_password, hashed_password):
    """
    Verify that a given plain password matches a hashed password.

    Args:
    plain_password (str): The password to check.
    hashed_password (str): The hashed password to compare against.

    Returns:
    bool: True if the password matches, False otherwise.
    """
    return pwd_context.verify(plain_password, hashed_password)


def get_password_hash(password):
    """
    Return the hashed version of a given password.

    Args:
    password (str): The password to hash.

    Returns:
    str: The hashed password.
    """
    return pwd_context.hash(password)


def decode_token(token: str):
    """
    Decode a given JWT token and return the payload.

    Args:
    token (str): The token to decode.

    Returns:
    dict or None: The decoded payload, or None if the token is invalid.
    """
    try:
        payload = jwt.decode(token, SECRET_KEY, algorithms=[ALGORITHM])
        return payload
    except JWTError:
        return None
