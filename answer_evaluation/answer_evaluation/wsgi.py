"""
WSGI config for answer_evaluation project.

It exposes the WSGI callable as a module-level variable named ``application``.
Where WSGI provided a standard for synchronous Python apps, ASGI provides one for both asynchronous and synchronous apps, with a WSGI backwards-compatibility implementation and multiple servers and application frameworks.
"""

import os

from django.core.wsgi import get_wsgi_application

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'answer_evaluation.settings')

application = get_wsgi_application()
