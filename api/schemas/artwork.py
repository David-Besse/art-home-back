"""
Schémas Pydantic pour les œuvres d'art.
"""
from typing import List, Optional, Any
from datetime import datetime
from pydantic import BaseModel


class ArtworkBase(BaseModel):
    """Schéma de base pour les œuvres d'art."""
    
    title: str
    description: Optional[str] = None
    picture: Optional[str] = None
    slug: Optional[str] = None
    status: Optional[str] = None


class ArtworkCreate(ArtworkBase):
    """Schéma pour la création d'une œuvre d'art."""
    
    exhibition_id: Optional[int] = None


class Artwork(ArtworkBase):
    """Schéma pour la sortie des données d'une œuvre d'art."""
    
    code_art: int
    created_at: Optional[datetime] = None
    updated_at: Optional[datetime] = None
    users: List[Any] = []
    exhibition: Optional[Any] = None

    model_config = {"from_attributes": True}
        

class ArtworkUpdate(BaseModel):
    """Schéma pour la mise à jour d'une œuvre d'art."""
    
    title: Optional[str] = None
    description: Optional[str] = None
    picture: Optional[str] = None
    slug: Optional[str] = None
    status: Optional[str] = None
    exhibition_id: Optional[int] = None
