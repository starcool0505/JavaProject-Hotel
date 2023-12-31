<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>xx飯店</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
		<link rel="stylesheet" href="./css/main_color.css">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
		<link rel="icon" type=image/png href="images/logopng.png">
	<style type="text/css">
		.logo-img
		{
			width: 8%;
			height: auto;
		}
	</style>
	
	</head>

	<body>
		<nav class="navbar navbar-expand-lg bg_main4 fixed-top">
			<div class="container-fluid" style="margin: 0 20%">
					<img src="images/logo7.jpg" alt="XX飯店圖片" class="logo-img" onclick="window.location.href='./index.jsp'">
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item">
							<a class="nav-link text-light ms-5 fs-4" href="./page1.jsp">關於我們</a>
						</li>
						<li class="nav-item">
							<a class="nav-link text-light fs-4" href="./page2.jsp">最新消息</a>
						</li>
						<li class="nav-item">
							<a class="nav-link text-light fs-4" href="/Hotel/mvc/page3">客房介紹</a>
						</li>
						<li class="nav-item">
							<a class="nav-link text-light fs-4" href="./page4.jsp">交通資訊</a>
						</li>
					</ul>
				</div>
				<i class="bi bi-person-circle fs-4 text-light ml-3 mb-0" role="button" onclick="window.location.href='./login.jsp'">登入</i>
			</div>
		</nav>
	</body>
</html>