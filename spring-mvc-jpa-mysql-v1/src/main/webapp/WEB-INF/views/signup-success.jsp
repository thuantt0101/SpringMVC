<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<%@ page isELIgnored="false"%>
</head>
<body>

 <div class="container">
        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
          <h1>${message}</h1>
          <hr/>
          <table class="table table-hover">           
            <tbody>
              <tr>
                <td> <strong>username</strong>  ${user.userName}</td>
              </tr>
              <tr>
                <td> <strong>Email</strong>  ${user.email}</td>
              </tr>
            </tbody>
          </table>
        </div>
    </div>


</body>
</html>