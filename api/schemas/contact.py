"""
Schémas Pydantic pour les contacts.
"""
from typing import Optional
from datetime import datetime
from pydantic import BaseModel, EmailStr


class ContactBase(BaseModel):
    """Schéma de base pour les contacts."""
    
    name: str
    email: EmailStr
    subject: str
    message: str


class ContactCreate(ContactBase):
    """Schéma pour la création d'un contact."""
    pass


class Contact(ContactBase):
    """Schéma pour la sortie des données d'un contact."""
    
    id: int
    created_at: datetime

    model_config = {"from_attributes": True} 