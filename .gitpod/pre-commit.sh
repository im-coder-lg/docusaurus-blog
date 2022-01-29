#!/bin/bash

pip install -r ./.gitpod/tools.txt
pre-commit install
pre-commit autoupdate
cz init
echo "Ready! ✨"