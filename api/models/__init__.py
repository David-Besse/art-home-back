"""Models for the API."""

from .user_model import User
from .artwork_model import Artwork
from .exhibition_model import Exhibition
from .contact_model import Contact
from .legal_notices_model import LegalNotices

__all__ = ["user_model", "artwork_model", "exhibition_model"]
