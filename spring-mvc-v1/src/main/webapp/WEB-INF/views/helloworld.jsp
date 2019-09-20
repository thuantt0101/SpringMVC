<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@ page isELIgnored="false"%>
<meta charset="ISO-8859-1">
<title>Hello World Example</title>
</head>
<body>

	<h2>${helloWorld.message }</h2>
	<h4>Server date time is : ${helloWorld.dateTime}</h4>

</body>
</html>
