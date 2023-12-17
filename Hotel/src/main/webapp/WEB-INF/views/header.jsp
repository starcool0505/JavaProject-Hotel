<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>XX飯店</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
		<link rel="stylesheet" href="./css/main_color.css">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
	</head>

	<body>
		<nav class="navbar navbar-expand-lg bg_main3 fixed-top">
			<div class="container-fluid" style="margin: 0 20%">
				<a class="navbar-brand text-light me-0" href="./index.jsp">XX飯店</a>
				
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item">
							<a class="nav-link text-light ms-5" href="./page1.jsp">關於XX</a>
						</li>
						<li class="nav-item">
							<a class="nav-link text-light" href="./page2.jsp">最新消息</a>
						</li>
						<li class="nav-item">
							<a class="nav-link text-light" href="./page3.jsp">客房介紹</a>
						</li>
						<li class="nav-item">
							<a class="nav-link text-light" href="./page4.jsp">交通資訊</a>
						</li>
					</ul>
				</div>
				
<%-- 			<i class="bi bi-person-circle text-light h5 mb-0 d-none d-md-block">${sessionScope.username}</i> --%>
				<i class="bi bi-person-circle h5 text-light ml-3 mb-0" role="button" onclick="window.location.href='./login.jsp'">登入</i>
			</div>
		</nav>
	</body>
</html>