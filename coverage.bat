set current_dir=D:\Users\Iain.Stevenson\source\repos\tdd.mvc\src
set VSTest="C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\Common7\IDE\CommonExtensions\Microsoft\TestWindow\VSTest.Console.exe"
set NUGETFolder=C:\Users\Iain.Stevenson\.nuget\packages
 
"%NUGETFolder%\OpenCover\4.7.1221\tools\OpenCover.Console.exe" -target:%VSTest% -targetargs:"%current_dir%\tdd.mvc.tests\bin\Debug\net5.0\tdd.mvc.tests.dll" -output:"%current_dir%\CoverageResults.xml" -register:user -filter:"+[tdd.mvc*]*"

"%NUGETFolder%\ReportGenerator\5.1.6\tools\net5.0\ReportGenerator.exe" -reports:"%current_dir%\CoverageResults.xml" -targetdir:"%current_dir%\CoverageReport"
