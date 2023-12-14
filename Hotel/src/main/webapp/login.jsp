<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
	</head>
	
	<body class="bg_main0 vh-100">
		<div class="d-flex justify-content-center align-items-center">
			<form class="needs-validation" method="post" action="/login2">
				<h4 class="text-center">Login</h4>
				<div>
					<label for="username" class="form-label">Username</label>
					<input type="text" class="form-control" id="username" name="username" value="" required>
					<div class="invalid-feedback">請輸入帳號</div>
				</div>
				<div>
					<label for="password" class="form-label">Password</label>
					<input type="password" class="form-control" id="password" name="password" value="" required>
					<div class="invalid-feedback">請輸入密碼</div>
				</div>
				<div class="d-flex justify-content-center mt-3">
					<button class="btn btn-primary" type="submit">登入</button>
				</div>
			</form>
		</div>
	</body>
</html>

<%@ include file="/WEB-INF/views/footer.jsp" %>