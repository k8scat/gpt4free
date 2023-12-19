#!/bin/bash
set -e

# Release at https://pypi.org/project/g4f-fork/

# virtualenv .venv && source .venv/bin/activate
# pip install -U pip
# pip install -r requirements.txt
# pip install --upgrade setuptools wheel twine

rm -rf dist
python setup.py sdist bdist_wheel
python -m twine upload -u __token__ -p $token dist/*
