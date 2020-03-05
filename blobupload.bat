REM Send the ECollection Files to Azure for IDAP
setlocal enableextensions EnableDelayedExpansion



REM Establish AZCopy Variables

set ProgramPath="c:\Program Files (x86)\Microsoft SDKs\Azure\AzCopy\AZCopy.exe"
REM You have to set the source as according to your requirement
set Source="enter your folder path where file is located"
set Dest="https://iconnect247storage.blob.core.windows.net/klfimportfile"
REM If the Destination SAS contains a % symbol, you must replace it with %% so as to not be interpreted as a variable.
set DestSAS="?si=klf&sv=2019-02-02&sr=c&sig=lOw1bMJeNh1bdY23wc%%2Fb8Hc1bb1NNwPWPZ9ZhI3h9ws%%3D"


REM Run Uploads
%ProgramPath% /Source:%Source% /Dest:%dest% /DestSAS:%DestSAS% /XO /Y /Pattern:"*.*"





