"""
Module définissant le modèle de données des expositions.
"""
from sqlalchemy import Column, Integer, String, Text, Date, DateTime, ForeignKey
from sqlalchemy.orm import relationship
from sqlalchemy.sql import func
from ..database import Base


class Exhibition(Base):
    """Modèle représentant une exposition."""
    
    __tablename__ = "exhibition"

    code_exhibition = Column(Integer, primary_key=True, index=True)
    title = Column(String(255))
    start_date = Column(Date)
    end_date = Column(Date)
    slug = Column(String(255), nullable=True)
    status = Column(String(50), nullable=True)
    description = Column(Text, nullable=True)
    created_at = Column(DateTime, server_default=func.now())
    updated_at = Column(DateTime, server_default=func.now(), onupdate=func.now())

    owner_id = Column(Integer, ForeignKey("user.code_user"))
    
    owner = relationship("User", back_populates="exhibitions")
    artworks = relationship("Artwork", back_populates="exhibition")
