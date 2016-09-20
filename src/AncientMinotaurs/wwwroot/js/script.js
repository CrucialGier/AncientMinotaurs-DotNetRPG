$(document).ready(function () {
    $(".admin-display").on("click", "#monster-button", function (event) {
        $("#pathway-form").hide();
        $("#room-form").hide();
        $("#monster-form").show();
    });
    $(".admin-display").on("click", "#room-button", function (event) {
        $("#pathway-form").hide();
        $("#monster-form").hide();
        $("#room-form").show();
    });
    $(".admin-display").on("click", "#pathway-button", function (event) {
        $("#monster-form").hide();
        $("#room-form").hide();
        $("#pathway-form").show();
    });
    $("#items").on("submit", ".pick-up", function (event) {
        event.preventDefault();
        console.log($(this).serialize());
        $.ajax({
            url: 'Game/PickUp',
            type: 'GET',
            data: $(this).serialize(),
            dataType: 'html',
            success: function (result) {
                $('#items').html(result);
            }
        });
    });
    $("#items").on("submit", ".drop", function (event) {
        event.preventDefault();
        console.log($(this).serialize());
        $.ajax({
            url: 'Game/Drop',
            type: 'GET',
            data: $(this).serialize(),
            dataType: 'html',
            success: function (result) {
                $('#items').html(result);
            }
        });
    });
    $("#rooms").on("submit", ".move", function (event) {
        event.preventDefault();
        $.ajax({
            url: 'Game/Move',
            type: 'GET',
            data: $(this).serialize(),
            dataType: 'html',
            success: function (result) {
                $('#page').html(result);


            }
        });
    });
    $(".admin-display").on("submit", ".new-monster", function (event) {
        event.preventDefault();
        $.ajax({
            url: "/Game/MonsterCreate",
            type: 'POST',
            data: $(this).serialize(),
            dataType: 'html',
            success: function (result) {
                $(".monster-display").html(result);
            }
        });
    });
    $(".admin-display").on("submit", ".new-room", function (event) {
        event.preventDefault();
        $.ajax({
            url: "/Game/RoomCreate",
            type: 'POST',
            data: $(this).serialize(),
            dataType: 'html',
            success: function (result) {
                $(".admin-display").html(result);
            }
        });
    });
    $(".admin-display").on("submit", ".new-pathway", function (event) {
        event.preventDefault();
        $.ajax({
            url: "/Game/PathwayCreate",
            type: 'POST',
            data: $(this).serialize(),
            dataType: 'html',
            success: function (result) {
                $("#rooms").html(result);
            }
        });
    });
});