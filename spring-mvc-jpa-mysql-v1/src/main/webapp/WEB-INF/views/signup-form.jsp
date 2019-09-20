<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<%@ page isELIgnored="false"%>
</head>
<body>

	<div class="container">
		<div class="col-md-offset-2 col-md-7">
			<h2 class="text-center">Spring MVC 5 Form Handling Example -Sign
				up Form</h2>
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Đăng ký tài khoản mới</div>
				</div>
				<div class="panel-body">
					<form:form action="saveSignUpForm" cssClass="form-horizontal"
						method="post" modelAttribute="signUpForm">

						<div class="form-group">
							<label for="icode" class="col-md-3 control-label">Tên
								đăng nhập</label>
							<div class="col-md-9">
								<form:input path="userName" cssClass="form-control" />
							</div>
						</div>

						<div class="form-group">
							<label for="password" class="col-md-3 control-label">Mật
								khẩu</label>
							<div class="col-md-9">
								<form:password path="password" cssClass="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="col-md-3 control-label">Nhập
								lại mật khẩu</label>
							<div class="col-md-9">
								<form:password path="password" cssClass="form-control" />
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="col-md-3 control-label">Email</label>
							<div class="col-md-9">
								<form:input path="email" cssClass="form-control" />
							</div>
						</div>

						<div class="form-group">
							<!-- Button -->
							<div class="col-md-offset-3 col-md-9">
								<form:button cssClass="btn btn-primary">Đăng ký</form:button>
							</div>
						</div>

					</form:form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>