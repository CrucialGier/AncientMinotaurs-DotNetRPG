using AncientMinotaurs.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Xunit;

namespace AncientMinotaurs.Tests.ModelTests
{
    public class RoomTest
    {
        [Fact]
        public void GetRoomIdTest()
        {
            //Arrange
            var room = new Room();
            room.RoomId = 2;

            //Act
            var result = room.RoomId;

            //Assert
            Assert.Equal(2, result);
        }
        [Fact]
        public void RoomsEqualTest()
        {
            //Arrange
            var room = new Room();
            var otherRoom = new Room();

            //Act
            var result = room.RoomId;

            //Assert
            Assert.Equal(room.Pathways, otherRoom.Pathways);
        }
    }
}
