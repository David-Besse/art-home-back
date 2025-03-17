"""
Module définissant le modèle de données des mentions légales.
"""
from sqlalchemy import Column, Integer, String, Text, DateTime
from sqlalchemy.sql import func
from ..database import Base


class LegalNotices(Base):
    """Modèle représentant les mentions légales."""
    
    __tablename__ = "legal_notices"

    id = Column(Integer, primary_key=True, index=True)
    title = Column(String(255))
    content = Column(Text)
    updated_at = Column(DateTime, server_default=func.now(), onupdate=func.now()) 