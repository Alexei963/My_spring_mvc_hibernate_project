<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <title>Тестовая страница</title>
    <link href="<c:url value="/css/style.css" />" rel="stylesheet">
</head>
<body>
<div>
    <h2>Данные пользователя</h2>
    <br>
    <form:form action="saveUser" modelAttribute="user">
        <form:hidden path="id"/>
        Имя<form:input path="name"/>
        <br><br>
        Фамилия<form:input path="surname"/>
        <br><br>
        Возраст<form:input path="age"/>
        <br><br>
        Email<form:input path="email"/>
        <br><br>
        <input type="submit" value="Сохранить"/>
        <input type="button" class="back" onclick="history.back();" value="Назад"/>
    </form:form>
</div>
</body>
</html>