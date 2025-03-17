"""
Module définissant les endpoints pour la gestion des contacts.
"""
from datetime import datetime
from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from typing import List

from ..database import get_db
from ..models.contact_model import Contact
from ..schemas.contact import ContactCreate, Contact as ContactSchema


router = APIRouter(prefix="/api/contacts", tags=["Contacts"])


@router.post(
    "/", 
    response_model=ContactSchema,
    summary="Créer un nouveau message de contact",
    description="Enregistre un nouveau message de contact dans la base de données."
)
def create_contact(contact: ContactCreate, db: Session = Depends(get_db)):
    """
    Enregistre un nouveau message de contact dans la base de données.
    """
    db_contact = Contact(
        name=contact.name,
        email=contact.email,
        subject=contact.subject,
        message=contact.message,
        created_at=datetime.now()
    )
    
    db.add(db_contact)
    db.commit()
    db.refresh(db_contact)
    
    return db_contact


@router.get(
    "/", 
    response_model=List[ContactSchema],
    summary="Récupérer tous les messages de contact",
    description="Récupère la liste de tous les messages de contact."
)
def list_contacts(db: Session = Depends(get_db)):
    """
    Récupère la liste de tous les messages de contact.
    """
    return db.query(Contact).all()


@router.get(
    "/{contact_id}", 
    response_model=ContactSchema,
    summary="Récupérer un message de contact",
    description="Récupère un message de contact par son identifiant."
)
def read_contact(contact_id: int, db: Session = Depends(get_db)):
    """
    Récupère un message de contact par son identifiant.
    """
    contact = db.query(Contact).filter(Contact.id == contact_id).first()
    
    if contact is None:
        raise HTTPException(status_code=404, detail="Message de contact non trouvé")
    
    return contact 