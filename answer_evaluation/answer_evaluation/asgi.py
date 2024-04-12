"""
ASGI config for answer_evaluation project.
It exposes the ASGI callable as a module-level variable named ``application``.
ASGI (Asynchronous Server Gateway Interface) is a spiritual successor to WSGI, intended to provide a standard interface between async-capable Python web servers, frameworks, and applications.
"""

import os

from django.core.asgi import get_asgi_application

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'answer_evaluation.settings')

application = get_asgi_application()
