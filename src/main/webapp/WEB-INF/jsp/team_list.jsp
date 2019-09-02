<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table>
    <thead>
        <td>name</td>
        <td>kills</td>
        <td>passes</td>
        <td>points</td>
    </thead>
    <c:forEach items="${players}" var ="player">
        <tr>
            <td>${player.name}</td>
            <td>${player.kills}</td>
            <td>${player.passes}</td>
            <td>${player.points}</td>
        </tr>
    </c:forEach>
</table>