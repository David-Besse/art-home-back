"""
Module définissant le modèle de données des œuvres d'art.
"""
from sqlalchemy import Column, Integer, String, Text, DateTime, ForeignKey
from sqlalchemy.orm import relationship
from sqlalchemy.sql import func
from ..database import Base


class Artwork(Base):
    """Modèle représentant une œuvre d'art."""
    
    __tablename__ = "artwork"

    code_art = Column(Integer, primary_key=True, index=True)
    title = Column(String(255))
    description = Column(Text, nullable=True)
    picture = Column(String(255), nullable=True)
    slug = Column(String(255), nullable=True)
    status = Column(String(50), nullable=True)
    created_at = Column(DateTime, server_default=func.now())
    updated_at = Column(DateTime, server_default=func.now(), onupdate=func.now())
    
    exhibition_id = Column(Integer, ForeignKey("exhibition.code_exhibition"), nullable=True)
    
    users = relationship("User", secondary="artwork_user", back_populates="artworks")
    exhibition = relationship("Exhibition", back_populates="artworks")
