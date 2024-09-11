#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

# Check for the existence of the venv directory
if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv venv
fi

echo "Activating virtual environment..."
source venv/bin/activate

# Check if dependencies are already installed
if [ ! -f "venv/installed" ]; then
    if [ -f "requirements.txt" ]; then
        echo "Installing wheel for faster installations..."
        pip install wheel
        echo "Installing dependencies..."
        pip install -r requirements.txt
        touch venv/installed
    else
        echo "requirements.txt not found, skipping dependency installation."
    fi
else
    echo "Dependencies already installed, skipping installation."
fi

# Copy .env file if it does not exist
if [ ! -f ".env" ]; then
    echo "Copying configuration file..."
    cp .env-example .env
else
    echo ".env file already exists, skipping copy."
fi

# Start the bot
echo "Starting the bot..."
python3 main.py

echo "Done"
echo "PLEASE EDIT .ENV FILE"
