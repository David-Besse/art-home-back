"""
Module définissant les endpoints pour la gestion des mentions légales.
"""
from datetime import datetime
from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from typing import List

from ..database import get_db
from ..models.legal_notices_model import LegalNotices
from ..schemas.legal_notices import (
    LegalNoticesCreate, 
    LegalNotices as LegalNoticesSchema, 
    LegalNoticesUpdate
)
from ..dependencies import get_current_user


router = APIRouter(tags=["Mentions légales"])


@router.get(
    "/api/legal-notices", 
    response_model=List[LegalNoticesSchema],
    summary="Récupérer toutes les mentions légales",
    description="Récupère la liste de toutes les mentions légales."
)
def list_legal_notices(db: Session = Depends(get_db)):
    """
    Récupère la liste de toutes les mentions légales.
    """
    return db.query(LegalNotices).all()


@router.get(
    "/api/legal-notices/{notice_id}", 
    response_model=LegalNoticesSchema,
    summary="Récupérer une mention légale",
    description="Récupère une mention légale par son identifiant."
)
def read_legal_notice(notice_id: int, db: Session = Depends(get_db)):
    """
    Récupère une mention légale par son identifiant.
    """
    notice = db.query(LegalNotices).filter(LegalNotices.id == notice_id).first()
    
    if notice is None:
        raise HTTPException(status_code=404, detail="Mention légale non trouvée")
    
    return notice


@router.post(
    "/api/secure/legal-notices", 
    response_model=LegalNoticesSchema,
    summary="Créer une nouvelle mention légale",
    description="Crée une nouvelle mention légale dans la base de données."
)
def create_legal_notice(
    notice: LegalNoticesCreate, 
    db: Session = Depends(get_db),
    current_user = Depends(get_current_user)
):
    """
    Crée une nouvelle mention légale dans la base de données.
    """
    # Vérifier si l'utilisateur a le rôle admin
    if "ROLE_ADMIN" not in current_user.roles:
        raise HTTPException(status_code=403, detail="Permission refusée")
    
    db_notice = LegalNotices(
        title=notice.title,
        content=notice.content,
        updated_at=datetime.now()
    )
    
    db.add(db_notice)
    db.commit()
    db.refresh(db_notice)
    
    return db_notice


@router.put(
    "/api/secure/legal-notices/{notice_id}", 
    response_model=LegalNoticesSchema,
    summary="Mettre à jour une mention légale",
    description="Met à jour une mention légale existante."
)
def update_legal_notice(
    notice_id: int,
    notice: LegalNoticesUpdate, 
    db: Session = Depends(get_db),
    current_user = Depends(get_current_user)
):
    """
    Met à jour une mention légale existante.
    """
    # Vérifier si l'utilisateur a le rôle admin
    if "ROLE_ADMIN" not in current_user.roles:
        raise HTTPException(status_code=403, detail="Permission refusée")
    
    db_notice = db.query(LegalNotices).filter(LegalNotices.id == notice_id).first()
    
    if db_notice is None:
        raise HTTPException(status_code=404, detail="Mention légale non trouvée")
    
    update_data = notice.model_dump(exclude_unset=True)
    
    for key, value in update_data.items():
        setattr(db_notice, key, value)
    
    db_notice.updated_at = datetime.now()
    
    db.commit()
    db.refresh(db_notice)
    
    return db_notice 