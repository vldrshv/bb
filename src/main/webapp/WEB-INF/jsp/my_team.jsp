<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<table id="players_t">
    <thead>
        <th id="name_h" class="sorted_by_this">
            <div> name </div>
            <div class="material-icons padding_" style="font-size: 10px"> sort </div>
        </th>
        <%--<th id="kills_h" data-sortby="number">--%>
            <%--<div> kills </div>--%>
            <%--<div class="material-icons padding_" style="font-size: 10px"> sort </div>--%>
        <%--</th>--%>
        <%--<th id="passes_h">--%>
            <%--<div> passes </div>--%>
            <%--<div class="material-icons padding_" style="font-size: 10px"> sort </div>--%>
        <%--</th>--%>
        <%--<th id="points_h">--%>
            <%--</div> points </div>--%>
            <%--<div class="material-icons padding_" style="font-size: 10px"> sort </div>--%>
        <%--</th>--%>
        <th id="available_h">
            </div> available </div>
            <div class="material-icons padding_" style="font-size: 10px"> sort </div>
        </th>
        <th id="AV_h">
            </div> AV </div>
            <div class="material-icons padding_" style="font-size: 10px"> sort </div>
        </th>
        <th id="AG_h">
            </div> AG </div>
            <div class="material-icons padding_" style="font-size: 10px"> sort </div>
        </th>
        <th id="MA_h">
            </div> MA </div>
            <div class="material-icons padding_" style="font-size: 10px"> sort </div>
        </th>
        <th id="STR_h">
            </div> STR </div>
            <div class="material-icons padding_" style="font-size: 10px"> sort </div>
        </th>
        <%--<th id="level_h">--%>
            <%--</div> level </div>--%>
            <%--<div class="material-icons padding_" style="font-size: 10px"> sort </div>--%>
        <%--</th>--%>
    </thead>
    <tbody>
    <c:forEach items="${players}" var ="player">
        <tr>
            <td>${player.name}</td>
            <%--<td>${player.kills}</td>--%>
            <%--<td>${player.passes}</td>--%>
            <%--<td>${player.points}</td>--%>
            <td marked="${not player.isAvailable}">${player.isAvailable}</td>
            <td>${player.AVcurrent}</td>
            <td>${player.AGcurrent}</td>
            <td>${player.MAcurrent}</td>
            <td>${player.STRcurrent}</td>
            <%--<td>${player.level}</td>--%>
        </tr>
    </c:forEach>
    </tbody>
</table>

<table>
    <thead>
    <th>team</th>
    <th>win</th>
    <th>draw</th>
    <th>loose</th>
    <th>GA</th>
    <th>GC</th>
    <th>K</th>
    <th>value</th>
    <th colspan="5">5 last</th>
    </thead>
    <tbody>
        <tr>
            <td>A</td>
            <td>1</td>
            <td>2</td>
            <td>2</td>
            <td>7</td>
            <td>7</td>
            <td>1</td>
            <td>1500</td>
            <td><span class="circle draw"></span></td>
            <td><span class="circle win"></span></td>
            <td><span class="circle loose"></span></td>
            <td><span class="circle loose"></span></td>
            <td><span class="circle draw"></span></td>
        </tr>
        <tr>
            <td>B</td>
            <td>3</td>
            <td>1</td>
            <td>1</td>
            <td>10</td>
            <td>9</td>
            <td>1</td>
            <td>1900</td>
            <td><span class="circle win"></span></td>
            <td><span class="circle win"></span></td>
            <td><span class="circle loose"></span></td>
            <td><span class="circle win"></span></td>
            <td><span class="circle draw"></span></td>
        </tr>
    </tbody>
</table>

