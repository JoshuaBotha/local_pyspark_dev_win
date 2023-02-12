ECHO OFF
ECHO Creating Virtual Environment
"python" "-m" "venv" "./venv"
ECHO Update pip
"./venv/Scripts/python.exe" "-m" "pip" "install" "--upgrade" "pip"
ECHO Installing Python modules
"./venv/Scripts/pip3.exe" "install" "numpy" "jupyterlab" "pyspark"
PAUSE