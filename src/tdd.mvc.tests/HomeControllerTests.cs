using Microsoft.Extensions.Logging;
using Moq;
using NUnit.Framework;
using System.Diagnostics.CodeAnalysis;
using tdd.mvc.Controllers;

namespace tdd.mvc.tests
{
    [ExcludeFromCodeCoverage]
    public class HomeControllerTests
    {
        private HomeController _unit ;
        private  Mock<ILogger<HomeController>> _mockLogger;
        [SetUp]
        public void SetupFixture()
        {
            _mockLogger = new Mock<ILogger<HomeController>>();

            _unit = new HomeController(_mockLogger.Object);
        }

        [Test]
        public void CallindexReturnsView()
        {
            var response = _unit.Index();
            Assert.IsNotNull(response);
            Assert.IsInstanceOf<Microsoft.AspNetCore.Mvc.ViewResult>(response);
        }
        [Test]
        public void CallPrivacyReturnsView()
        {
            var response = _unit.Privacy();
            Assert.IsNotNull(response);
            Assert.IsInstanceOf<Microsoft.AspNetCore.Mvc.ViewResult>(response);
            
        }
    }
}