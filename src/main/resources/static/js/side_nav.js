function openNav() {
    $("#mySidenav").width("250px");
    $("#my_team_logo").width("50px");
    $("#my_team_logo").height("50px");
    $('#coach_info').show();
    $("#mySidenav").css('box-shadow', '10px 0px 10px -11px rgba(0,0,0,0.75)');
}

function closeNav() {
    $("#mySidenav").width("50px");
    $("#my_team_logo").width("25px");
    $("#my_team_logo").height("25px");
    $('#coach_info').hide();
    $("#mySidenav").css('box-shadow', '0px 0px 0px 0px rgba(0,0,0,0)');
}

function expandFloat() {
    if ($('#lil_floatbutton1').is(":hidden")) {
        $('#lil_floatbutton1').fadeIn("slow", function() {
            $('#lil_floatbutton1').show();
        });
        $('#lil_floatbutton2').fadeIn("slow", function() {
            $('#lil_floatbutton2').show();
        });

        $('#float_button').html('&#10799')
    } else {
        $('#lil_floatbutton1').fadeOut("slow", function() {
            $('#lil_floatbutton1').hide();
        });
        $('#lil_floatbutton2').fadeOut("slow", function() {
            $('#lil_floatbutton2').hide();
        });

        $('#float_button').html('&#9776;')

    }
}

function init_side_nav() {
    $("#mySidenav").mouseenter(function() {
        openNav()
    }).mouseleave(function() {
        closeNav()
    });
}

