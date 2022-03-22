<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <title>Тестовая страница</title>
    <link href="<c:url value="/WEB-INF/css/style.css" />" rel="stylesheet">
</head>
<body>
<div>
    <h2>Список пользователей</h2>
    <br>
    <table>
        <tr>
            <th>Имя</th>
            <th>Фамилия</th>
            <th>Возраст</th>
            <th>Email</th>
        </tr>
        <c:forEach var="user" items="${allUsers}">
             <tr>
                 <td>${user.name}</td>
                 <td>${user.surname}</td>
                 <td>${user.age}</td>
                 <td>${user.email}</td>
             </tr>
        </c:forEach>
    </table>
    <br>
    <input type="button" value="Добавить" onclick="window.location.href = 'addUser'">
</div>
</body>
</html>
