# Local Windows Pyspark Jupyter-based Developement Environment

A Python environment to develop Pyspark based notebooks in.

## Requirements:
- Python3 installed and added to PATH environment variable

## Installation
1. Download and install Java JDK (if not installed already). Ensure JAVA_HOME varialbe is set **OR** copy path to 'jdk-**' to 'conf_java_jdk_path.txt'
2. Run '# Step 2 - Create Python Venv.bat' under 'Setup' folder to set up Python environment

## Other versions of Spark and Hadoop
You can download other versions of Spark and/or Hadoop winutils.exe to use by following the links (also in Setup folder):
1. Download Spark with Hadoop version from https://spark.apache.org/downloads.html
2. Extract file to a descriptive folder
3. Change 'conf_spark_to_use.txt' to new spark folder
4. Download corresponding Hadoop winutils.exe from https://github.com/kontext-tech/winutils
5. Place winutils.exe in <new_hadoop_folder>\bin
6. Change 'conf_hadoop_winutils_to_use.txt' to new folder

## How to Run
There are two options:
1. You can start a Spark shell by running '# Run Spark Shel.bat'
**OR**
2. You can start a JupyterLab instance using the Pyspark by running '# Run Pyspark JupyterLab.bat'