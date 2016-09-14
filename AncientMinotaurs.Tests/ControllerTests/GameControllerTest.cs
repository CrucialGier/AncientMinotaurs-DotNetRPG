using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using AncientMinotaurs.Controllers;
using AncientMinotaurs.Models;
using Xunit;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;

namespace AncientMinotaurs.Tests
{
    public class PathwaysControllerTest
    {
        var options = new DbContextOptions();
        private readonly ApplicationDbContext _db = new ApplicationDbContext();
        public UserManager<ApplicationUser> userManager;
        [Fact]
        public void Get_ViewResult_Index_Test(userManager, _db)
        {
            //Arrange
            GameController controller = new GameController();

            //Act
            var result = controller.Index();

            //Assert
            Assert.IsType<ViewResult>(result);
        }
    }
}
