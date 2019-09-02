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

	<script type="text/javascript" src="index.js"></script>
</head>
<body>
  <div id="mySidenav" class="sidenav">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
    <div style="background: white; height: 100px; width: 250px">
    	<div style="float: left; margin-right: 10px; margin-left: 10px">
        	<img src="./img/my_team_logo.png" style="height: 50px; width: 50px; margin-top: 5px">
      	</div>
        <div>
            <span style="font-size: 22px"><b>${coach.name}</b></span>
            <br>
            <span style="font-size: 10px">${coach.email}</span>
        </div>
    </div>
    <hr>
      <div class="menu_item">
          <div style="float: left">
              <img src="./img/my_team.png" >
          </div>
          <div>
              <a href="#" id="m1">My team</a>
          </div>
      </div>
      <div class="menu_item">
          <div style="float: left">
              <img src="./img/my_tournament.png" >
          </div>
          <div>
              <a href="#">My tournament</a>
          </div>
      </div>
    <a href="#">Statistics</a>
    <div class="menu_item" id="m4">
    	<div style="float: left">
    		<img src="./img/super-bowl-trophy_WC_c.png" >
    	</div>
    	<div>
            <a href="#">World cup</a>
        </div>
    </div>
      <div class="menu_item" id="m5">
          <div style="float: left">
              <img src="./img/naf_cup_hovered.png" >
          </div>
          <div>
              <a href="#">Euro cup</a>
          </div>
      </div>
    <a href="#" id="6">Waaaat?</a>

  </div>

  <div id="main">
    <div class="toolbar">
      <div class="container" onclick="openNav()"> 
        <span>&#9776;</span>
      </div>
      <div style="float: right; margin-right: 10px">
        <img src="./img/logo_animated.svg" style="height: 50px; width: 50px; margin-top: 5px">
      </div>
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
    document.getElementById("mySidenav").style.width = "250px";
    // document.getElementById("main").style.marginLeft = "250px";
    // document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
  }

  function closeNav() {
      document.getElementById("mySidenav").style.width = "0";
    // document.getElementById("main").style.marginLeft= "0";
    // document.body.style.backgroundColor = "white";
  }
  </script>
</body>
</html> 
