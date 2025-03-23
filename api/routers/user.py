"""
Module définissant les endpoints pour la gestion des utilisateurs.
"""
from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session

from ..database import get_db
from ..models import user_model
from ..schemas.user import User, UserCreate, UserUpdate
from ..security import get_password_hash
from ..dependencies import get_current_user


# Création d'un routeur avec un tag unique pour tous les endpoints utilisateurs
router = APIRouter(tags=["Utilisateurs"])

# Endpoint public pour la création d'utilisateur
@router.post(
    "/api/users/new", 
    response_model=User,
    summary="Créer un nouvel utilisateur",
    description="Crée un nouvel utilisateur dans la base de données."
)
def create_user(user: UserCreate, db: Session = Depends(get_db)):
    """
    Crée un nouvel utilisateur dans la base de données.
    """
    # Vérifier si l'email existe déjà
    db_user = db.query(user_model.User).filter(user_model.User.email == user.email).first()
    if db_user:
        raise HTTPException(status_code=400, detail="Email déjà utilisé")
        
    hashed_password = get_password_hash(user.password)
    
    # Utiliser model_dump pour extraire tous les champs du schéma UserCreate
    # en excluant le mot de passe qui sera ajouté séparément après hachage
    user_data = user.model_dump(exclude={"password"})
    
    new_user = user_model.User(
        **user_data,
        password=hashed_password
    )
    
    db.add(new_user)
    db.commit()
    db.refresh(new_user)
    return new_user


# Endpoints sécurisés nécessitant l'authentification
@router.get(
    "/api/secure/users/{user_id}", 
    response_model=User,
    summary="Récupérer un utilisateur",
    description="Récupère un utilisateur par son identifiant."
)
def read_user(user_id: int, db: Session = Depends(get_db)):
    """
    Récupère un utilisateur par son identifiant.
    """
    db_user = db.query(user_model.User).filter(user_model.User.code_user == user_id).first()
    if db_user is None:
        raise HTTPException(status_code=404, detail="Utilisateur non trouvé")
    return db_user


@router.put(
    "/api/secure/users/{user_id}", 
    response_model=User,
    summary="Mettre à jour un utilisateur",
    description="Met à jour les informations d'un utilisateur existant."
)
def update_user(
    user_id: int,
    user: UserUpdate,
    db: Session = Depends(get_db),
    current_user: user_model.User = Depends(get_current_user)
):
    """
    Met à jour les informations d'un utilisateur existant.
    """
    if current_user.code_user != user_id:
        raise HTTPException(status_code=403, detail="Non autorisé à mettre à jour cet utilisateur")
    
    db_user = db.query(user_model.User).filter(user_model.User.code_user == user_id).first()
    if db_user is None:
        raise HTTPException(status_code=404, detail="Utilisateur non trouvé")
    
    update_data = user.model_dump(exclude_unset=True)
    
    if "password" in update_data and update_data["password"]:
        update_data["password"] = get_password_hash(update_data["password"])
    
    for key, value in update_data.items():
        setattr(db_user, key, value)
    
    db.commit()
    db.refresh(db_user)
    return db_user


@router.delete(
    "/api/secure/users/{user_id}", 
    response_model=User,
    summary="Supprimer un utilisateur",
    description="Supprime un utilisateur de la base de données."
)
def delete_user(
    user_id: int,
    db: Session = Depends(get_db),
    current_user: user_model.User = Depends(get_current_user)
):
    """
    Supprime un utilisateur de la base de données.
    """
    if current_user.code_user != user_id:
        raise HTTPException(status_code=403, detail="Non autorisé à supprimer cet utilisateur")
    
    db_user = db.query(user_model.User).filter(user_model.User.code_user == user_id).first()
    if db_user is None:
        raise HTTPException(status_code=404, detail="Utilisateur non trouvé")
    
    db.delete(db_user)
    db.commit()
    
    return db_user
