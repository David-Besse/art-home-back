"""
Module définissant les endpoints pour la gestion des œuvres d'art.
"""
from typing import List
from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session, joinedload

from ..database import get_db
from ..models import artwork_model, user_model
from ..schemas import Artwork, ArtworkCreate, ArtworkUpdate
from ..dependencies import get_current_user


# Router public pour la récupération des œuvres d'art
public_router = APIRouter(prefix="/api/artworks", tags=["Œuvres d'art"])


@public_router.get(
    "/", 
    response_model=List[Artwork],
    summary="Récupérer toutes les œuvres d'art",
    description="Récupère la liste de toutes les œuvres d'art disponibles."
)
def list_artworks(db: Session = Depends(get_db)):
    """
    Récupère la liste de toutes les œuvres d'art disponibles.
    """
    return db.query(artwork_model.Artwork).options(
        joinedload(artwork_model.Artwork.users),
        joinedload(artwork_model.Artwork.exhibition)
    ).all()


# Router sécurisé pour les opérations nécessitant l'authentification
secured_router = APIRouter(prefix="/api/secure/artworks", tags=["Œuvres d'art"])


@secured_router.post(
    "/", 
    response_model=Artwork,
    summary="Créer une nouvelle œuvre d'art",
    description="Crée une nouvelle œuvre d'art dans la base de données."
)
def create_artwork(
    artwork: ArtworkCreate,
    db: Session = Depends(get_db),
    current_user: user_model.User = Depends(get_current_user)
):
    """
    Crée une nouvelle œuvre d'art dans la base de données.
    """
    if current_user is None:
        raise HTTPException(status_code=401, detail="Non authentifié")

    db_artwork = artwork_model.Artwork(**artwork.model_dump())
    db_artwork.users.append(current_user)  # Associer l'utilisateur actuel à l'œuvre
    
    db.add(db_artwork)
    db.commit()
    db.refresh(db_artwork)
    return db_artwork


@secured_router.get(
    "/{artwork_id}", 
    response_model=Artwork,
    summary="Récupérer une œuvre d'art",
    description="Récupère une œuvre d'art par son identifiant."
)
def read_artwork(artwork_id: int, db: Session = Depends(get_db)):
    """
    Récupère une œuvre d'art par son identifiant.
    """
    db_artwork = db.query(artwork_model.Artwork).options(
        joinedload(artwork_model.Artwork.users),
        joinedload(artwork_model.Artwork.exhibition)
    ).filter(artwork_model.Artwork.code_art == artwork_id).first()
    
    if db_artwork is None:
        raise HTTPException(status_code=404, detail="Œuvre d'art non trouvée")
    return db_artwork


@secured_router.put(
    "/{artwork_id}", 
    response_model=Artwork,
    summary="Mettre à jour une œuvre d'art",
    description="Met à jour les informations d'une œuvre d'art existante."
)
def update_artwork(
    artwork_id: int,
    artwork: ArtworkUpdate,
    db: Session = Depends(get_db),
    current_user: user_model.User = Depends(get_current_user)
):
    """
    Met à jour les informations d'une œuvre d'art existante.
    """
    db_artwork = db.query(artwork_model.Artwork).filter(
        artwork_model.Artwork.code_art == artwork_id
    ).first()
    
    if db_artwork is None:
        raise HTTPException(status_code=404, detail="Œuvre d'art non trouvée")
    
    # Vérifier si l'utilisateur actuel est un propriétaire de l'œuvre
    if current_user not in db_artwork.users:
        raise HTTPException(status_code=403, detail="Non autorisé à modifier cette œuvre")
    
    for key, value in artwork.model_dump(exclude_unset=True).items():
        setattr(db_artwork, key, value)
    
    db.commit()
    db.refresh(db_artwork)
    return db_artwork


@secured_router.delete(
    "/{artwork_id}", 
    response_model=Artwork,
    summary="Supprimer une œuvre d'art",
    description="Supprime une œuvre d'art de la base de données."
)
def delete_artwork(
    artwork_id: int, 
    db: Session = Depends(get_db), 
    current_user: user_model.User = Depends(get_current_user)
):
    """
    Supprime une œuvre d'art de la base de données.
    """
    db_artwork = db.query(artwork_model.Artwork).filter(
        artwork_model.Artwork.code_art == artwork_id
    ).first()
    
    if db_artwork is None:
        raise HTTPException(status_code=404, detail="Œuvre d'art non trouvée")
    
    # Vérifier si l'utilisateur actuel est un propriétaire de l'œuvre
    if current_user not in db_artwork.users:
        raise HTTPException(status_code=403, detail="Non autorisé à supprimer cette œuvre")
    
    db.delete(db_artwork)
    db.commit()
    return db_artwork
