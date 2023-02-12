ECHO OFF
@REM ECHO ********************************************
@REM ECHO        Adding Environment Varibales         
@REM ECHO ********************************************
ECHO Setting SPARK_HOME to '%cd%\Spark_3.3.1_for_hadoop_3.3'
SET /p spark_to_use =< conf_spark_to_use.txt
SET SPARK_HOME =  "%cd%\%spark_to_use%"
ECHO Setting HADOOP_HOME to '%cd%\Hadoop_3.3.1_winutils'
SET /p hadoop_winutils_to_use =< conf_hadoop_winutils_to_use.txt
SET HADOOP_HOME = "%cd%\%hadoop_winutils_to_use%"
ECHO Adding Spark and Hadoop paths to PATH
SET PATH = "%PATH%%%SPARK_HOME%%\bin;%%HADOOP_HOME%%\bin;"
START "Spark Shell" "%SPARK_HOME%\bin\spark-shell.cmd"