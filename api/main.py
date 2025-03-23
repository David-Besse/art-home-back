"""
Module principal définissant l'application FastAPI et incluant les routeurs pour la gestion des utilisateurs, des œuvres d'art et des expositions.
"""

from fastapi import FastAPI, HTTPException, Request
from .database import engine, Base
from .routers import (
    user_router, 
    artwork_public_router, 
    artwork_secured_router, 
    exhibition_router, 
    auth_router,
    contact_router,
    legal_notices_router
)
from .security import decode_token

# Création des tables dans la base de données
Base.metadata.create_all(bind=engine)

# Configuration de l'application FastAPI
app = FastAPI(
    title="Art@Home API",
    description="API pour la gestion d'une galerie d'art en ligne",
    version="1.0.0"
)

# Inclusion des différents routeurs
app.include_router(auth_router)
app.include_router(user_router)
app.include_router(artwork_public_router)
app.include_router(artwork_secured_router)
app.include_router(exhibition_router)
app.include_router(contact_router)
app.include_router(legal_notices_router)

# Middleware pour l'authentification
@app.middleware("http")
async def auth_middleware(request: Request, call_next):
    """
    Middleware pour vérifier l'authentification des requêtes.
    Seuls les endpoints publics sont exemptés de l'authentification.
    """
    # Liste des chemins exemptés de l'authentification
    exempt_paths = [
        "/api/auth/token",                # Login
        "/api/auth/token/refresh",        # Rafraîchissement du token
        "/api/users/new",                 # Inscription
        "/api/artworks",                  # Liste des œuvres d'art
        "/api/contacts",                  # Création d'un message de contact
        "/api/legal-notices",             # Récupération des mentions légales
        "/api/exhibitions",               # Liste des expositions
        "/docs",                          # Documentation OpenAPI
        "/redoc",                         # Documentation ReDoc
        "/openapi.json",                  # Schéma OpenAPI
        "/",                              # Racine
        "/favicon.ico"                    # Favicon
    ]
    
    # Vérifier si le chemin est exempté
    if any(request.url.path.startswith(path) for path in exempt_paths):
        response = await call_next(request)
        return response
    
    # Vérifier l'authentification pour les autres chemins
    authorization = request.headers.get("Authorization")
    if not authorization or "Bearer " not in authorization:
        raise HTTPException(status_code=401, detail="Non authentifié")

    token = authorization.split("Bearer ")[1]
    payload = decode_token(token)
    if not payload:
        raise HTTPException(status_code=401, detail="Token invalide")
            
    # Attacher l'utilisateur à la requête
    request.state.user_email = payload.get("sub")

    response = await call_next(request)
    return response
