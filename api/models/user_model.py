"""
Module définissant le modèle de données des utilisateurs.
"""
from sqlalchemy import Column, Integer, String, Date, DateTime, Table, ForeignKey, Text
from sqlalchemy.orm import relationship
from sqlalchemy.sql import func
from ..database import Base


artwork_user_table = Table(
    "artwork_user",
    Base.metadata,
    Column("artwork_id", Integer, ForeignKey("artwork.code_art"), primary_key=True),
    Column("user_id", Integer, ForeignKey("user.code_user"), primary_key=True),
)


class User(Base):
    """Modèle représentant un utilisateur."""
    
    __tablename__ = "user"

    code_user = Column(Integer, primary_key=True, index=True)
    lastname = Column(String(100))
    firstname = Column(String(100))
    nickname = Column(String(100), nullable=True)
    date_of_birth = Column(Date, nullable=True)
    presentation = Column(Text, nullable=True)
    roles = Column(String(255))  # Utilisation de String au lieu de ARRAY pour la compatibilité
    email = Column(String(180), unique=True, index=True)
    password = Column(String(255))
    avatar = Column(String(255), nullable=True)
    status = Column(String(50), nullable=True)
    slug = Column(String(255), nullable=True)
    created_at = Column(DateTime, server_default=func.now())
    updated_at = Column(DateTime, server_default=func.now(), onupdate=func.now())

    artworks = relationship("Artwork", secondary=artwork_user_table, back_populates="users")
    exhibitions = relationship("Exhibition", back_populates="owner")
