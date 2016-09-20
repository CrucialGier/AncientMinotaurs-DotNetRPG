$(document).ready(function () {
    $("#monster-button").click(function () {
        $("#monster-form").toggle();
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
                $('#rooms').html(result);
            }
        })
    })
});