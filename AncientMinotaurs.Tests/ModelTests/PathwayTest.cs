using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AncientMinotaurs.Models;
using Xunit;

namespace AncientMinotaurs.Tests
{
    public class PathwayTest
    {
        [Fact]
        public void GetStartIdTest()
        {
            //Arrange
            var path = new Pathway();
            path.StartId = 2;

            //Act
            var result = path.StartId;

            //Assert
            Assert.Equal(2, result);
        }
        [Fact]
        public void GetPathwayIdTest()
        {
            //Arrange
            var path = new Pathway();
            path.PathwayId = 2;

            //Act
            var result = path.PathwayId;

            //Assert
            Assert.Equal(2, result);
        }
        [Fact]
        public void PathsAreEqual()
        {
            //Arrange
            var path = new Pathway();
            var path2 = new Pathway();

            //Act
            var result = path.StartId;

            //Assert
            Assert.Equal(path.EndId, path2.EndId);
            Assert.Equal(path.StartId, path2.StartId);
            Assert.Equal(path.PathwayId, path2.PathwayId);
        }
    }
}
