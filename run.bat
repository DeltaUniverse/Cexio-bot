@echo off
setlocal

echo.
echo Checking for virtual environment...

if not exist venv (
    echo Creating virtual environment...
    python -m venv venv
    echo Virtual environment created.
) else (
    echo Virtual environment already exists.
)

echo.
echo Activating virtual environment...
call venv\Scripts\activate

echo.
echo Checking for dependencies...

if not exist venv\Lib\site-packages\installed (
    if exist requirements.txt (
        echo Installing wheel for faster installations...
        pip install wheel

        echo Installing dependencies...
        pip install -r requirements.txt

        echo Marking dependencies as installed...
        echo. > venv\Lib\site-packages\installed
        echo Dependencies installed.
    ) else (
        echo requirements.txt not found. Skipping dependency installation.
    )
) else (
    echo Dependencies already installed. Skipping installation.
)

echo.
echo Checking for configuration file...

if not exist .env (
    echo Copying configuration file from .env-example to .env...
    copy .env-example .env
    echo Configuration file copied.
) else (
    echo .env file already exists. Skipping copy.
)

echo.
echo Starting the bot...
python main.py

echo.
echo Done.
echo PLEASE EDIT .ENV FILE
pause
