"""
Schémas Pydantic pour les expositions.
"""
from typing import List, Optional, Any
from datetime import date as date_type, datetime
from pydantic import BaseModel, field_validator


class ExhibitionBase(BaseModel):
    """Schéma de base pour les expositions."""
    
    title: str
    start_date: date_type
    end_date: date_type
    slug: Optional[str] = None
    status: Optional[str] = None
    description: Optional[str] = None
    
    @field_validator('end_date')
    @staticmethod
    def end_date_must_be_after_start_date(v, values):
        """Valide que la date de fin est après la date de début."""
        if 'start_date' in values.data and v < values.data['start_date']:
            raise ValueError('La date de fin doit être après la date de début')
        return v


class ExhibitionCreate(ExhibitionBase):
    """Schéma pour la création d'une exposition."""
    
    owner_id: int


class Exhibition(ExhibitionBase):
    """Schéma pour la sortie des données d'une exposition."""
    
    code_exhibition: int
    created_at: Optional[datetime] = None
    updated_at: Optional[datetime] = None
    owner: Optional[Any] = None
    artworks: List[Any] = []

    model_config = {"from_attributes": True}
           

class ExhibitionUpdate(BaseModel):
    """Schéma pour la mise à jour d'une exposition."""
    
    title: Optional[str] = None
    start_date: Optional[date_type] = None
    end_date: Optional[date_type] = None
    slug: Optional[str] = None
    status: Optional[str] = None
    description: Optional[str] = None
    
    @field_validator('end_date')
    @staticmethod
    def end_date_must_be_after_start_date(v, values):
        """Valide que la date de fin est après la date de début."""
        if 'start_date' in values.data and v < values.data['start_date']:
            raise ValueError('La date de fin doit être après la date de début')
        return v
