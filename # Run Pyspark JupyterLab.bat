ECHO OFF
ECHO ********************************************
ECHO       Running JupyterLab for Pyspark         
ECHO ********************************************

ECHO Setting JAVA_HOME if needed
IF "%JAVA_HOME%"=="" (
    SET /p java_jdk_home_path =< Setup\conf_java_jdk_path.txt
    SET JAVA_HOME = "%java_jdk_home_path%"
)

ECHO Setting SPARK_HOME to '%cd%\Spark_3.3.1_for_hadoop_3.3'
SET /p spark_to_use =< Setup\conf_spark_to_use.txt
SET SPARK_HOME =  "%cd%\%spark_to_use%"

ECHO Setting HADOOP_HOME to '%cd%\Hadoop_3.3.1_winutils'
SET /p hadoop_winutils_to_use =< Setup\conf_hadoop_winutils_to_use.txt
SET HADOOP_HOME = "%cd%\%hadoop_winutils_to_use%"

ECHO Adding Spark and Hadoop paths to PATH
SET PATH = "%PATH%%%SPARK_HOME%%\bin;%%HADOOP_HOME%%\bin;"
START "Pyspark JupyterLab" "%cd%\venv\Scripts\python.exe" -m jupyter lab