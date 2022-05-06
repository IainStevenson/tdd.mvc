# tdd.mvc

# Test Driven Development exercise with Vanilla .NET MVC Solution.

The source code here was created using the following method.

## Steps to setup

* GitHub - Create a repository.
* Clone repository
* Create src folder
* open Powershell windows in the src folder and issue command: 
    *   dotnet new mvc --name tdd.mvc
* creates a new mvc project in .NET
* open visual studio and open project created.
* Save solution file.
* Re-arrange solution to preferences. Solution in root, projects under src folder all files in solution.
* List of generated files
	* Program.cs
	* Startup.cs
	* HomeController.cs
	* ErrorViewModel.cs
* Mark these With [ExcludeFromCodeCoverage] at the class level and remove unused usings.
* Re open solution from root folder.
* Save and push back to repo.

# TDD routine

* Installed OpenCover from GitHub
* Added OpenCover.Usage.pdf to solution.
* Added NUnit test project. tdd.mvc.tests
* Ran units tests to check installation. (1) Green.



# Install OpenCover


https://github.com/OpenCover/opencover/releases

