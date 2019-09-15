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
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
    <script type="text/javascript" src="./js/sort_plugin.js"></script>
    <script type="text/javascript" src="./js/side_nav.js"></script>

	<script type="text/javascript" src="index.js"></script>
</head>
<body onload="initiate()">
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
        <div class="little_float_button first" id="lil_floatbutton1" style="display: none"> + </div>
        <div class="little_float_button second" id="lil_floatbutton2" style="display: none"> ? </div>
    </div>
  <script>


      // var table = $('#players_t');
      //
      // $('#name_h, #kills_h')
      //     .wrapInner('<span title="sort this column"/>')
      //     .each(function(){
      //
      //         var th = $(this),
      //             thIndex = th.index(),
      //             inverse = false;
      //
      //         th.click(function(){
      //
      //             table.find('td').filter(function(){
      //
      //                 return $(this).index() === thIndex;
      //
      //             }).sortElements(function(a, b){
      //
      //                 return $.text([a]) > $.text([b]) ?
      //                     inverse ? -1 : 1
      //                     : inverse ? 1 : -1;
      //
      //             }, function(){
      //
      //                 // parentNode is the element we want to move
      //                 return this.parentNode;
      //
      //             });
      //
      //             inverse = !inverse;
      //
      //         });
      //
      //     });

        function initiate() {
            init_side_nav();
            init_sorting('#players_t');
        }


  </script>
</body>
</html> 
