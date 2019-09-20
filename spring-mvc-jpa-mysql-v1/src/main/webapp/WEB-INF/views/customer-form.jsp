<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Đăng ký thông tin khách hàng</title>
<style>
.error {
	color: red
}
</style>

<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<%@ page isELIgnored="false"%>
</head>
<body>

<div class="container">
		<div class="col-md-12">
			<h4 class="text-center">Điền thông tin khách hàng. (*) không
				được bỏ trống.</h4>
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Đăng ký tài khoản mới</div>
				</div>
				<div class="panel-body">
					<form:form action="processForm" modelAttribute="customer"
						cssClass="form-horizontal">

						<div class="form-group">
							<label for="firstName" class="col-md-3 control-label">Họ:</label>
							<div class="col-md-9">
								<form:input path="firstName" cssClass="form-control" />
							</div>
						</div>

						<div class="form-group">
							<label for="lastName" class="col-md-3 control-label">Tên
								(*):</label>
							<div class="col-md-9">
								<form:input path="lastName" cssClass="form-control" />
								<form:errors path="lastName" cssClass="error" />
							</div>
						</div>

						<div class="form-group">
							<label for="lastName" class="col-md-3 control-label">Free
								passes (*)</label>
							<div class="col-md-9">
								<form:input path="freePasses" cssClass="form-control" />
								<form:errors path="freePasses" cssClass="error" />
							</div>
						</div>

						<div class="form-group">
							<label for="lastName" class="col-md-3 control-label">Email
								(*)</label>
							<div class="col-md-9">
								<form:input path="email" cssClass="form-control" />
								<form:errors path="email" cssClass="error" />
							</div>
						</div>

						<div class="form-group">
							<label for="lastName" class="col-md-3 control-label">Postal
								Code:</label>
							<div class="col-md-9">
								<form:input path="postalCode" cssClass="form-control" />
								<form:errors path="postalCode" cssClass="error" />
							</div>
						</div>

						<div class="form-group">
							<!-- Button -->
							<div class="col-md-offset-3 col-md-9">
								<button type="submit" class="btn btn-primary">Đăng ký</button>
								<button type="reset" class="btn btn-primary">Nhập lại</button>
							</div>
						</div>

					</form:form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>