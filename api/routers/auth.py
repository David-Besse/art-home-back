"""
Module définissant les endpoints pour l'authentification des utilisateurs.
"""
from fastapi import APIRouter, Depends, HTTPException, Response, Cookie
from fastapi.security import OAuth2PasswordRequestForm
from sqlalchemy.orm import Session

from ..database import get_db
from ..models import user_model
from ..schemas import Token
from ..security import (
    create_access_token, 
    create_refresh_token, 
    verify_password, 
    decode_token
)


router = APIRouter(prefix="/api/auth", tags=["Authentification"])


@router.post(
    "/token", 
    response_model=Token, 
    summary="Obtenir un token d'authentification",
    description="Authentifie un utilisateur et retourne un token d'accès et un token de rafraîchissement."
)
def login_for_access_token(
    response: Response,
    form_data: OAuth2PasswordRequestForm = Depends(),
    db: Session = Depends(get_db)
):
    """
    Endpoint de connexion qui retourne un token d'accès et un token de rafraîchissement.
    """
    user = db.query(user_model.User).filter(user_model.User.email == form_data.username).first()
    if not user or not verify_password(form_data.password, user.password):
        raise HTTPException(status_code=401, detail="Email ou mot de passe incorrect")

    access_token = create_access_token(data={"sub": user.email})
    refresh_token = create_refresh_token(data={"sub": user.email})

    response.set_cookie(
        key="refresh_token",
        value=refresh_token,
        httponly=True,
        secure=True,
        max_age=60 * 60 * 24 * 7
    )

    return Token(access_token=access_token, refresh_token=refresh_token, token_type="bearer")


@router.post(
    "/token/refresh", 
    response_model=Token,
    summary="Rafraîchir un token d'authentification",
    description="Utilise un token de rafraîchissement pour obtenir un nouveau token d'accès."
)
def refresh_access_token(
    response: Response,
    refresh_token: str = Cookie(None),
    db: Session = Depends(get_db)
):
    """
    Endpoint pour rafraîchir un token d'accès.
    """
    if not refresh_token:
        raise HTTPException(status_code=401, detail="Token de rafraîchissement manquant")

    payload = decode_token(refresh_token)
    if not payload:
        raise HTTPException(status_code=401, detail="Token de rafraîchissement invalide")

    user = db.query(user_model.User).filter(user_model.User.email == payload["sub"]).first()
    if not user:
        raise HTTPException(status_code=404, detail="Utilisateur non trouvé")

    access_token = create_access_token(data={"sub": user.email})
    new_refresh_token = create_refresh_token(data={"sub": user.email})

    response.set_cookie(
        key="refresh_token",
        value=new_refresh_token,
        httponly=True,
        secure=True,
        max_age=60 * 60 * 24 * 7
    )

    return Token(access_token=access_token, refresh_token=new_refresh_token, token_type="bearer")
