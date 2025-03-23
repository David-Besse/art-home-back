"""
Schémas Pydantic pour les tokens d'authentification.
"""
from pydantic import BaseModel, Field


class Token(BaseModel):
    """Schéma pour les tokens d'authentification."""
  
    access_token: str
    refresh_token: str
    token_type: str


class TokenRequest(BaseModel):
    """Schéma pour la requête de token d'authentification."""
    
    username: str
    password: str
    grant_type: str = Field(default="password", pattern="^password$")
