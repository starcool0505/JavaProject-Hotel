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
			width: 50px;
			height: auto;
		}
	</style>
	
	</head>

	<body>
		<nav class="navbar navbar-expand-lg bg_main4 fixed-top">
			<div class="container-fluid" style="margin: 0 20%">
				<button class="navbar-brand text-light me-0" onclick="window.location.href='/Hotel'" style="background: none; border: none; padding: 0; cursor: pointer;">
					<img src="/Hotel/images/logo7.jpg" alt="XX飯店圖片" class="logo-img">
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item">
							<a class="nav-link text-light ms-5" href="/Hotel/mvc/page1">關於我們</a>
						</li>
						<li class="nav-item">
							<a class="nav-link text-light" href="/Hotel/mvc/activity">最新消息</a>
						</li>
						<li class="nav-item">
							<a class="nav-link text-light" href="./page3.jsp">客房介紹</a>
						</li>
						<li class="nav-item">
							<a class="nav-link text-light" href="./page4.jsp">交通資訊</a>
						</li>
					</ul>
				</div>
				
				<i class="bi bi-person-circle h5 text-light ml-3 mb-0" role="button" onclick="window.location.href='./login.jsp'">登入</i>
			</div>
		</nav>
	</body>
</html>