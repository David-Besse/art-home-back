"""
Schémas Pydantic pour les utilisateurs.
"""
from datetime import date as date_type, datetime
from typing import List, Optional, Any
from pydantic import BaseModel, EmailStr


class UserBase(BaseModel):
    """Schéma de base pour les utilisateurs."""
    
    lastname: str
    firstname: str
    nickname: Optional[str] = None
    date_of_birth: Optional[date_type] = None
    presentation: Optional[str] = None
    roles: Optional[str] = None
    email: EmailStr
    avatar: Optional[str] = None
    status: Optional[str] = None
    slug: Optional[str] = None


class UserCreate(UserBase):
    """Schéma pour la création d'un utilisateur."""
    
    password: str


class User(UserBase):
    """Schéma pour la sortie des données d'un utilisateur."""
    
    code_user: int
    created_at: Optional[datetime] = None
    updated_at: Optional[datetime] = None
    artworks: List[Any] = []
    exhibitions: List[Any] = []

    model_config = {"from_attributes": True}


class UserUpdate(BaseModel):
    """Schéma pour la mise à jour d'un utilisateur."""
    
    lastname: Optional[str] = None
    firstname: Optional[str] = None
    nickname: Optional[str] = None
    date_of_birth: Optional[date_type] = None
    presentation: Optional[str] = None
    roles: Optional[str] = None
    email: Optional[EmailStr] = None
    password: Optional[str] = None
    avatar: Optional[str] = None
    status: Optional[str] = None
    slug: Optional[str] = None
