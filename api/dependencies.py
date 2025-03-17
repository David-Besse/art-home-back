"""
Module centralisant les dépendances pour les routers.
"""
from fastapi import Depends, HTTPException, Header
from sqlalchemy.orm import Session
from typing import Optional

from .database import get_db
from .models import user_model
from .security import decode_token


async def get_current_user(authorization: Optional[str] = Header(None), db: Session = Depends(get_db)):
    """
    Récupère l'utilisateur actuel à partir du token d'autorisation.
    
    Args:
        authorization: L'en-tête d'autorisation contenant le token Bearer.
        db: La session de base de données.
        
    Returns:
        L'utilisateur actuellement authentifié.
        
    Raises:
        HTTPException: Si l'authentification échoue.
    """
    if not authorization or "Bearer " not in authorization:
        raise HTTPException(status_code=401, detail="Non authentifié")
        
    token = authorization.split("Bearer ")[1]
    payload = decode_token(token)
    if not payload:
        raise HTTPException(status_code=401, detail="Token invalide")
    
    user = db.query(user_model.User).filter(user_model.User.email == payload["sub"]).first()
    if not user:
        raise HTTPException(status_code=404, detail="Utilisateur non trouvé")
        
    return user 