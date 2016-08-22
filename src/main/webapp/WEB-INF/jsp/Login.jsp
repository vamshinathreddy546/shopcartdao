<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="<c:url value="/resources/css/w3.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/font-awesome.min.css" />" rel="stylesheet">
</head>
<body style="padding-top: 100px">

<form action="perform_login" method="post">

<table border="0">
<tr>
<td>User Name:</td>
<td><input type="text" name="username"></td>
</tr>
<tr>
<td>Password:</td>
<td><input type="password" name="password"></td>
</tr>
<tr>
<td><input type="submit" value="Submit"></td>
</tr>
</table>
</form>

<%-- <pre>
<c:url var="addAction" value="loginvalidation"></c:url>
<form:form action="${addAction}" commandName="userDetails" method="post">

<form:label path="userName"><spring:message text="UserName" /></form:label><form:input path="userName" required="true" />
<form:label path="password"><spring:message text="Password" /></form:label><form:input path="password" required="true" />

<input type="submit" value="signup"/>
</form:form>
</pre>
 --%>

</body>
</html>