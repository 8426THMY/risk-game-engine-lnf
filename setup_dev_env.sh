#!/bin/bash

directory=$(realpath $(dirname "$0")) 

# Create a python virtual environment and install the packages.
python3 -m venv "$directory/.venv"
source "$directory/.venv/Scripts/activate"
python -m pip install -e "$directory/risk-shared" -e "$directory/risk-helper" -e "$directory/risk-engine"
python -m pip install namedpipe
deactivate