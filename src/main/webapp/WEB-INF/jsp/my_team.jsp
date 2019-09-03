<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<table id="players_t">
    <thead>
        <th id="name_h">name</th>
        <th id="kills_h">kills</th>
        <th id="passes_h">passes</th>
        <th id="points_h">points</th>
        <th id="available_h">available</th>
        <th id="AV_h">AV</th>
        <th id="AG_h">AG</th>
        <th id="MA_h">MA</th>
        <th id="STR_h">STR</th>
        <th id="level_h">level</th>
    </thead>
    <tbody>
    <c:forEach items="${players}" var ="player">
        <tr>
            <td>${player.name}</td>
            <td>${player.kills}</td>
            <td>${player.passes}</td>
            <td>${player.points}</td>
            <td marked="${not player.available}">${player.available}</td>
            <td>${player.AV}</td>
            <td>${player.AG}</td>
            <td>${player.MA}</td>
            <td>${player.STR}</td>
            <td>${player.level}</td>
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

