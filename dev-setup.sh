#!/bin/sh

alias python="python3"

if [ ! -d "./env" ]; then
    echo "Virtual Environment not found"
    echo "Creating... at $PWD/env"

    python -m venv env
    source env/bin/activate

    echo "Virtual Environment Created"
    echo "Installing Dependencies"

    pip install -r ./requirements.txt

    echo "Dependencies Installed"
else
    pip install -r ./requirements.txt
fi
