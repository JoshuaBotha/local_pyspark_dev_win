ECHO OFF
ECHO ***********************************************************************
ECHO Installing Virtual environment for JupyterLab based Pyspark Development
ECHO ***********************************************************************
CD ..
IF EXIST "venv\" (
    ECHO Virtual environment directory exists.
) ELSE (
    ECHO Creating Virtual Environment
    "python" "-m" "venv" "venv"
    ECHO Update pip
    "venv\Scripts\python.exe" "-m" "pip" "install" "--upgrade" "pip"
    ECHO Installing Python wheel module
    "venv\Scripts\pip3.exe" "install" "wheel"
    ECHO Installing Python modules
    "venv\Scripts\pip3.exe" "install" "-r" "Setup\requirements.txt"
    ECHO Virtual environment created!!! (If no errors occured =)
)
PAUSE