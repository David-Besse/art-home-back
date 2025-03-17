"""
Schémas Pydantic pour les tokens d'authentification.
"""
from pydantic import BaseModel


class Token(BaseModel):
    """Schéma pour les tokens d'authentification."""
  
    access_token: str
    refresh_token: str
    token_type: str
