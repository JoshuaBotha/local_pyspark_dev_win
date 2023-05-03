"***********************************************************************
Installing Virtual environment for JupyterLab based Pyspark Development
***********************************************************************
"

Set-Location ..
if (Test-Path -Path 'venv') {
    "A virtual environment already exists"
} else {
    "Creating Virtual Environment"
    python -m venv venv
    "Updating pip"
    .\venv\Scripts\python.exe -m pip install --upgrade pip
    "Installing wheel"
    .\venv\Scripts\python.exe -m pip install wheel
    "Installing requirements"
    .\venv\Scripts\python.exe -m pip install -r .\Setup\requirements.txt
    "Done"
}
Pause