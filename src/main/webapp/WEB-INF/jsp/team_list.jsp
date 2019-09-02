<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table>
    <thead>
        <td>name</td>
        <td>kills</td>
        <td>passes</td>
        <td>points</td>
        <td>available</td>
        <td>AV</td>
        <td>AG</td>
        <td>MA</td>
        <td>STR</td>
        <td>level</td>
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
    <td>team</td>
    <td>win</td>
    <td>draw</td>
    <td>loose</td>
    <td>GA</td>
    <td>GC</td>
    <td>K</td>
    <td>value</td>
    <td colspan="5">5 last</td>
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