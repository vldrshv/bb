<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <c:choose>
            <c:when test="${my_team == true}">
                <div class="menu_item choosen">
            </c:when>
            <c:otherwise><div class="menu_item"></c:otherwise>
        </c:choose>

        <div>
            <img src="./img/my_team.png" >
        </div>
        <div>
            <span><a href="/home?type=my_team" id="m1">My team</a></span>
        </div>
    </div>

    <%--      MY TOURNAMENT       --%>
    <c:choose>
        <c:when test="${my_tournament == true}">
            <div class="menu_item choosen">
        </c:when>
        <c:otherwise><div class="menu_item"></c:otherwise>
    </c:choose>
        <div>
            <img src="./img/my_tournament.png" >
        </div>
        <div>
            <span><a href="/home?type=my_tournament">My tournament</a></span>
        </div>
    </div>

    <%--      STATISTICS       --%>
    <c:choose>
        <c:when test="${statistics == true}">
            <div class="menu_item choosen">
        </c:when>
        <c:otherwise><div class="menu_item"></c:otherwise>
    </c:choose>
        <div>
            <img src="./img/statistics.png" >
        </div>
        <div>
            <span><a href="/home?type=statistics">Statistics</a></span>
        </div>
    </div>

    <%--      WORLD CUP       --%>
    <c:choose>
        <c:when test="${WC == true}">
            <div class="menu_item choosen">
        </c:when>
        <c:otherwise><div class="menu_item"></c:otherwise>
    </c:choose>
        <div>
            <img src="./img/super-bowl-trophy_WC.png" >
        </div>
        <div>
            <span><a href="/home?type=WC">World cup</a></span>
        </div>
    </div>

    <%--      EURO CUP       --%>
    <c:choose>
        <c:when test="${EC == true}">
            <div class="menu_item choosen">
        </c:when>
        <c:otherwise><div class="menu_item"></c:otherwise>
    </c:choose>
        <div>
            <img src="./img/naf_cup_hovered.png" >
        </div>
        <div>
            <span><a href="/home?type=EC">Euro cup</a></span>
        </div>
    </div>

    <%--      WAAAT       --%>
    <c:choose>
        <c:when test="${waaat == true}">
            <div class="menu_item choosen">
        </c:when>
        <c:otherwise><div class="menu_item"></c:otherwise>
    </c:choose>
        <div>
            <a href="/home?type=waaat"><img src="./img/my_waaat.png"></a>
        </div>
        <div>
            <span><a href="/home?type=waaat">Waaat?</a></span>
        </div>
    </div>
    <%--MENU END--%>
</div>