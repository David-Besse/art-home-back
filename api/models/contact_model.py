"""
Module définissant le modèle de données des contacts.
"""
from sqlalchemy import Column, Integer, String, Text, DateTime
from sqlalchemy.sql import func
from ..database import Base


class Contact(Base):
    """Modèle représentant un message de contact."""
    
    __tablename__ = "contact"

    id = Column(Integer, primary_key=True, index=True)
    name = Column(String(100))
    email = Column(String(180))
    subject = Column(String(255))
    message = Column(Text)
    created_at = Column(DateTime, server_default=func.now()) 