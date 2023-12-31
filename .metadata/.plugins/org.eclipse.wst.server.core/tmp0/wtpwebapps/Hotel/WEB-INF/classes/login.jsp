<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
		<link rel="stylesheet" href="./css/main_color.css">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
	</head>
	
	<body class="bg_main0 vh-100 position-relative">
		<div class="position-absolute top-50 start-50 translate-middle">
			<form class="needs-validation" method="post" action="./login">
				<h4 class="text-center">登入</h4>
				
				<!-- 顯示錯誤提示，如果有錯誤信息存在 -->
				<%
					String error=(String)request.getAttribute("error");
					if(error!=null)
					{
				%>
				<div class="alert alert-danger" role="alert">
					<%= error %>
				</div>
				<%	} %>
				
				<div>
					<label for="username" class="form-label">帳號</label>
					<input type="text" class="form-control" id="username" name="username" value="" required>
					<div class="invalid-feedback">請輸入帳號</div>
				</div>
				<div>
					<label for="password" class="form-label">密碼</label>
					<input type="password" class="form-control" id="password" name="password" value="" required>
					<div class="invalid-feedback">請輸入密碼</div>
				</div>
				<div class="d-flex justify-content-center mt-3">
					<button class="btn bg_main3 text-light font_c1" type="submit">登入</button>
				</div>
			</form>
		</div>
	</body>
</html>

<%@ include file="/WEB-INF/views/footer.jsp" %>