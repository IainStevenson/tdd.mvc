set current_dir=%CD%
set VSTest="C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\Common7\IDE\CommonExtensions\Microsoft\TestWindow\VSTest.Console.exe"
set NUGETFolder=C:\Users\Iain.Stevenson\.nuget\packages
SET Cover="%NUGETFolder%\OpenCover\4.7.1221\tools\OpenCover.Console.exe" 
SET report="%NUGETFolder%\ReportGenerator\5.1.6\tools\net5.0\ReportGenerator.exe"
SET target="%current_dir%\tdd.mvc.tests\bin\Debug\net5.0\tdd.mvc.tests.dll"
SET coverfile="%current_dir%\CoverageResults.xml"
SET coverreport="%current_dir%\CoverageReport"
SET filter="+[tdd.mvc*]* -[System.*]* -[Microsoft.*]* "

dotnet build tdd.mvc.sln 

%Cover% -target:%VSTest% -targetargs:%target% -output:%coverfile% -register:user -filter:%filter% -excludebyattribute:*.ExcludeFromCodeCoverage*


%report% -reports:%coverfile% -targetdir:%coverreport%

%coverreport%\index.html
