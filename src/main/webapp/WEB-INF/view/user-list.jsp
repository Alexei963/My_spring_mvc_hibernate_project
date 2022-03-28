<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <title>Тестовая страница</title>
    <link href="<c:url value="/css/style.css" />" rel="stylesheet">
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
            <th></th>
        </tr>
        <c:forEach var="user" items="${allUsers}">
            <c:url var="updateButton" value="/updateInfo">
                <c:param name="userId" value="${user.id}"/>
            </c:url>
            <c:url var="deleteButton" value="/deleteUser">
                <c:param name="userId" value="${user.id}"/>
            </c:url>
            <tr>
                <td>${user.name}</td>
                <td>${user.surname}</td>
                <td>${user.age}</td>
                <td>${user.email}</td>
                <td>
                    <input type="button" value="Редактировать"
                           onclick="window.location.href = '${updateButton}'"/>
                    <input type="button" value="Удалить"
                           onclick="window.location.href = '${deleteButton}'"/>
                </td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <input type="button" value="Добавить" onclick="window.location.href = 'addUser'"/>
    <input type="button" value="Удалить всех" onclick="window.location.href = 'deleteAllUser'">
</div>
</body>
</html>
