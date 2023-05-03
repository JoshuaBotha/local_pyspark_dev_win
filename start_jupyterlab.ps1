"********************************************
      Running JupyterLab for Pyspark         
********************************************
"

$current_directory = Convert-Path .

"Setting JAVA_HOME if needed"
if (-not $env:JAVA_HOME) {
    $env:JAVA_HOME = Get-Content .\Setup\conf_java_jdk_path.txt
    $env:Path += ";" + $env:JAVA_HOME
}

"Setting SPARK_HOME"
$spark_folder = Get-Content .\Setup\conf_spark_to_use.txt
$env:SPARK_HOME = $current_directory + "\" + $spark_folder
$env:Path += ";" + $env:SPARK_HOME


"Setting HADOOP_HOME"
$hadoop_folder = Get-Content .\Setup\conf_hadoop_winutils_to_use.txt
$env:HADOOP_HOME = $current_directory + "\" + $hadoop_folder
$env:Path += ";" + $env:HADOOP_HOME

"Setting PYARROW_IGNORE_TIMEZONE"
$env:PYARROW_IGNORE_TIMEZONE = 1

"Starting JupyterLab"

$python_path = $current_directory + "\venv\Scripts\python.exe"

$starting_directory = Get-Content .\Setup\conf_starting_directory.txt

Start-Process -FilePath $python_path -WorkingDirectory $starting_directory -ArgumentList "-m", "jupyter", "lab" 