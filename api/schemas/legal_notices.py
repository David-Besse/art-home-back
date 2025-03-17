"""
Schémas Pydantic pour les mentions légales.
"""
from typing import Optional
from datetime import datetime
from pydantic import BaseModel


class LegalNoticesBase(BaseModel):
    """Schéma de base pour les mentions légales."""
    
    title: str
    content: str


class LegalNoticesCreate(LegalNoticesBase):
    """Schéma pour la création des mentions légales."""
    pass


class LegalNotices(LegalNoticesBase):
    """Schéma pour la sortie des données des mentions légales."""
    
    id: int
    updated_at: datetime

    model_config = {"from_attributes": True}


class LegalNoticesUpdate(BaseModel):
    """Schéma pour la mise à jour des mentions légales."""
    
    title: Optional[str] = None
    content: Optional[str] = None 