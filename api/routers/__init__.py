# my_project/app/routers/__init__.py
"""
Module d'initialisation pour les routers.
"""
from .user import router as user_router
from .artwork import public_router as artwork_public_router
from .artwork import secured_router as artwork_secured_router
from .exhibition import router as exhibition_router
from .auth import router as auth_router
from .contact import router as contact_router
from .legal_notices import router as legal_notices_router

__all__ = ["user_router", "artwork_public_router", "artwork_secured_router", "exhibition_router", "auth_router", "contact_router", "legal_notices_router"]
