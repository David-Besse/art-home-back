"""
Module définissant les endpoints pour la gestion des expositions.
"""

from typing import List
from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session, joinedload
from ..database import get_db
from ..models import exhibition_model, user_model
from ..schemas import Exhibition, ExhibitionCreate, ExhibitionUpdate, Artwork
from ..dependencies import get_current_user

router = APIRouter(prefix="/api/secure/exhibitions", tags=["Expositions"])

@router.post("/", 
             response_model=Exhibition,
             summary="Créer une nouvelle exposition",
             description="Créer une nouvelle exposition avec les détails fournis")
def create_exhibition(exhibition: ExhibitionCreate,
                      db: Session = Depends(get_db),
                      current_user: user_model.User = Depends(get_current_user)):
    """
    Crée une nouvelle exposition dans la base de données.
    
    Args:
        exhibition: Les données de l'exposition à créer
        db: La session de base de données
        current_user: L'utilisateur actuellement authentifié
        
    Returns:
        L'exposition nouvellement créée
        
    Raises:
        HTTPException: Si l'utilisateur n'est pas authentifié
    """
    if current_user is None:
        raise HTTPException(status_code=401, detail="Unauthorized")
    
    # Assurez-vous que l'utilisateur actuel est défini comme propriétaire
    exhibition_data = exhibition.model_dump()
    exhibition_data["owner_id"] = current_user.code_user
    
    db_exhibition = exhibition_model.Exhibition(**exhibition_data)
    db.add(db_exhibition)
    db.commit()
    db.refresh(db_exhibition)
    return db_exhibition

@router.get("/{exhibition_id}", 
           response_model=Exhibition,
           summary="Récupérer une exposition",
           description="Récupère une exposition par son identifiant")
def read_exhibition(exhibition_id: int, db: Session = Depends(get_db)):
    """
    Récupère une exposition depuis la base de données par son identifiant.

    Args:
        exhibition_id: L'identifiant de l'exposition à récupérer
        db: La session de base de données

    Returns:
        L'objet exposition récupéré

    Raises:
        HTTPException: Si l'exposition n'est pas trouvée
    """

    db_exhibition = db.query(exhibition_model.Exhibition)\
        .options(joinedload(exhibition_model.Exhibition.owner),
                 joinedload(exhibition_model.Exhibition.artworks))\
        .filter(exhibition_model.Exhibition.code_exhibition == exhibition_id)\
        .first()
    if db_exhibition is None:
        raise HTTPException(status_code=404, detail="Exposition non trouvée")
    return db_exhibition

@router.put("/{exhibition_id}", 
          response_model=Exhibition,
          summary="Mettre à jour une exposition",
          description="Met à jour une exposition existante avec les détails fournis")
def update_exhibition(exhibition_id: int,
                      exhibition: ExhibitionUpdate,
                      db:Session = Depends(get_db),
                      current_user: user_model.User = Depends(get_current_user)):
    """
    Met à jour une exposition dans la base de données.

    Args:
        exhibition_id: L'identifiant de l'exposition à mettre à jour
        exhibition: Les données de l'exposition à mettre à jour
        db: La session de base de données
        current_user: L'utilisateur actuellement authentifié

    Returns:
        L'objet exposition mis à jour

    Raises:
        HTTPException: Si l'exposition n'est pas trouvée ou si l'utilisateur n'est pas autorisé à la mettre à jour
    """
    db_exhibition = db.query(exhibition_model.Exhibition).filter(exhibition_model.Exhibition.code_exhibition == exhibition_id).first()
    if db_exhibition is None:
        raise HTTPException(status_code=404, detail="Exposition non trouvée")
    if db_exhibition.owner_id != current_user.code_user:
        raise HTTPException(status_code=403, detail="Non autorisé à mettre à jour cette exposition")
    for key, value in exhibition.model_dump(exclude_unset=True).items():
        setattr(db_exhibition, key, value)
    db.commit()
    db.refresh(db_exhibition)
    return db_exhibition

@router.delete("/{exhibition_id}", 
              response_model=Exhibition,
              summary="Supprimer une exposition",
              description="Supprime une exposition existante de la base de données")
def delete_exhibition(exhibition_id: int,
                      db: Session = Depends(get_db),
                      current_user: user_model.User = Depends(get_current_user)):
    """
    Supprime une exposition de la base de données.

    Args:
        exhibition_id: L'identifiant de l'exposition à supprimer
        db: La session de base de données
        current_user: L'utilisateur actuellement authentifié

    Returns:
        L'objet exposition supprimé

    Raises:
        HTTPException: Si l'exposition n'est pas trouvée ou si l'utilisateur n'est pas autorisé à la supprimer
    """
    db_exhibition = db.query(exhibition_model.Exhibition).filter(exhibition_model.Exhibition.code_exhibition == exhibition_id).first()
    if db_exhibition is None:
        raise HTTPException(status_code=404, detail="Exposition non trouvée")
    if db_exhibition.owner_id != current_user.code_user:
        raise HTTPException(status_code=403, detail="Non autorisé à supprimer cette exposition")
    db.delete(db_exhibition)
    db.commit()
    return db_exhibition

@router.get("/artworks/{exhibition_id}", 
           response_model=List[Artwork],
           summary="Récupérer les œuvres d'une exposition",
           description="Récupère la liste des œuvres d'art associées à une exposition")
def get_exhibition_artworks(exhibition_id: int, db: Session = Depends(get_db)):
    """
    Récupère les œuvres d'art associées à une exposition.

    Args:
        exhibition_id: L'identifiant de l'exposition pour laquelle récupérer les œuvres
        db: La session de base de données

    Returns:
        La liste des œuvres d'art associées à l'exposition

    Raises:
        HTTPException: Si l'exposition n'est pas trouvée
    """
    db_exhibition = db.query(exhibition_model.Exhibition).filter(exhibition_model.Exhibition.code_exhibition == exhibition_id).first()
    if db_exhibition is None:
        raise HTTPException(status_code=404, detail="Exposition non trouvée")
    
    return db_exhibition.artworks
