<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>

    <link href="https://fonts.googleapis.com/css?family=Manjari&display=swap" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="./css/text-field-outlined.css">
    <link rel="stylesheet" type="text/css" href="./css/button-outlined.css">
    <link rel="stylesheet" type="text/css" href="./css/button-contained.css">
    <link rel="stylesheet" type="text/css" href="./css/side-nav.css">
    <link rel="stylesheet" type="text/css" href="./css/team_table.css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
    <script type="text/javascript" src="./js/sort_plugin.js"></script>

	<script type="text/javascript" src="index.js"></script>
</head>
<body>
    <div class="toolbar">
        <div style="float: right; margin-right: 10px">
            <img src="./img/logo_animated.svg" style="height: 50px; width: 50px; margin-top: 5px">
        </div>
    </div>
    <div id="main">
        <jsp:include page="side_nav.jsp"/>

        <div class="content">
            <jsp:include page="${type}.jsp"/>
        </div>
    </div>

    <div onclick="expandFloat()">
        <div class="float_button" id="float_button" > &#9776; </div>
        <div class="little_float_button first" id="lil_floatbutton1"> + </div>
        <div class="little_float_button second" id="lil_floatbutton2"> ? </div>
    </div>
  <script>
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

  $("#mySidenav").mouseenter(function() {
      openNav()
  }).mouseleave(function() {
      closeNav()
  });

  function expandFloat() {
      // $("#float_button").mouseenter(function () {
          // alert("aaaa")
      if ($('#lil_floatbutton1').is(":hidden")) {
          $('#lil_floatbutton1').show();
          $('#lil_floatbutton2').show();
          $('#float_button').html('&#10799')
      } else {
          // }).mouseleave(function () {
          $('#lil_floatbutton1').hide();
          $('#lil_floatbutton2').hide();
          $('#float_button').html('&#9776;')
          // });
      }
  }

  var table = $('#players_t');

  $('#name_h, #kills_h')
      .wrapInner('<span title="sort this column"/>')
      .each(function(){

          var th = $(this),
              thIndex = th.index(),
              inverse = false;

          th.click(function(){

              table.find('td').filter(function(){

                  return $(this).index() === thIndex;

              }).sortElements(function(a, b){

                  return $.text([a]) > $.text([b]) ?
                      inverse ? -1 : 1
                      : inverse ? 1 : -1;

              }, function(){

                  // parentNode is the element we want to move
                  return this.parentNode;

              });

              inverse = !inverse;

          });

      });


  </script>
</body>
</html> 
