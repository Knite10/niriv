#!/bin/bash
# Update pip and install all dependencies
pip install -U pip
pip install -r requirements.txt

# Start SearXNG with Gunicorn
gunicorn -b 0.0.0.0:$PORT searx.webapp:app
