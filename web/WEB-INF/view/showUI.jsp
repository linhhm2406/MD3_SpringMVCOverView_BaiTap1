<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: LinhHM
  Date: 5/29/2020
  Time: 8:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form method="post" action="/start/calculator">
    <table>
        <tr>
            <td>VND :</td>
            <td><input type="number" name="vnd"></td>
        </tr>
        <tr>
            <td>Ratio :</td>
            <td><input type="number" name="ratio"></td>
        </tr>
        <tr>
            <td>USD :</td>
            <td><input type="text" value="${usd}"></td>
        </tr>
        <tr>
            <td><input type="submit" name="Calculate"></td>
        </tr>
    </table>
</form:form>
</body>
</html>
