<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thông tin khách hàng</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<%@ page isELIgnored="false"%>
</head>
<body>

<div class="container">
<p>Thông tin khách hàng: ${customer.firstName }  ${customer.lastName } </p> 
<br/>
<p>email:  ${customer.email } </p>
<br/>
<p>Mã bưu điện : ${customer.postalCode }  </p>
 </div>
</body>
</html>