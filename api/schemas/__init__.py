"""
Schemas module
"""
# On importe d'abord toutes les classes avant de les utiliser
from .user import User, UserCreate, UserUpdate
from .artwork import Artwork, ArtworkCreate, ArtworkUpdate
from .exhibition import Exhibition, ExhibitionCreate, ExhibitionUpdate
from .token import Token

# Reconstruire les modèles pour résoudre les références avant (forward references)
User.model_rebuild()
Artwork.model_rebuild()
Exhibition.model_rebuild()

__all__ = ["User",
           "UserCreate", 
           "UserUpdate", 
           "Artwork", 
           "ArtworkCreate", 
           "ArtworkUpdate", 
           "Exhibition", 
           "ExhibitionCreate", 
           "ExhibitionUpdate", 
           "Token"]
