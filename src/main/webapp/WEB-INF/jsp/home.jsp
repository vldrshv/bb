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
      <div id="mySidenav" class="sidenav">
          <%--    TEAM HEADER     --%>
          <div style="background: white; height: 100px; width: 250px">
              <div style="float: left; margin-right: 10px; margin-left: 10px">
                  <img id="my_team_logo" src="./img/my_team_logo.png" style="height: 25px; width: 25px; margin-top: 5px">
              </div>
              <div id="coach_info" style="display: none">
                  <span style="font-size: 22px"><b>${coach.name}</b></span>
                  <br>
                  <span style="font-size: 10px">${coach.email}</span>
              </div>
          </div>
          <%--      --%>

          <%--MENU--%>

          <%--      MY TEAM       --%>
          <hr>
          <div class="menu_item">
              <div>
                  <img src="./img/my_team.png" >
              </div>
              <div>
                  <a href="#" id="m1">My team</a>
              </div>
          </div>

          <%--      MY TOURNAMENT       --%>
          <div class="menu_item">
              <div>
                  <img src="./img/my_tournament.png" >
              </div>
              <div>
                  <a href="#">My tournament</a>
              </div>
          </div>

          <%--      STATISTICS       --%>
          <div class="menu_item">
              <div>
                  <img src="./img/statistics.png" >
              </div>
              <div>
                  <a href="#">Statistics</a>
              </div>
          </div>

          <%--      WORLD CUP       --%>
          <div class="menu_item">
              <div>
                  <img src="./img/super-bowl-trophy_WC_c.png" >
              </div>
              <div>
                  <a href="#">World cup</a>
              </div>
          </div>

          <%--      EURO CUP       --%>
          <div class="menu_item">
              <div>
                  <img src="./img/naf_cup_hovered.png" >
              </div>
              <div>
                  <a href="#">Euro cup</a>
              </div>
          </div>

          <%--      WAAAT       --%>
          <div class="menu_item">
              <div>
                  <img src="./img/my_waaat.png" >
              </div>
              <div>
                  <a href="#">Waaat?</a>
              </div>
          </div>
          <%--MENU END--%>
      </div>

    <div class="content">
      <h2>Sidenav Push Example</h2>
      <p>Click on the element below to open the side navigation menu, and push this content to the right. Notice that we add a black  see-through background-color to body when the sidenav is opened.</p>
<!--  -->
        <jsp:include page="team_list.jsp"/>
<!--  -->

    </div>
  </div>
    <div class="float_button"> + </div>

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
