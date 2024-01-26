<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<!-- 常駐使用 -->
		<title>xx飯店</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
		
		<!-- starcool使用 -->
		<link rel="stylesheet" href="/Hotel/css/main_color.css">
		<link rel="stylesheet" href="/Hotel/css/room_css.css">
		
		<!-- april使用 -->
		<script async src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDrwdSb-WZgrv3mLogWyURlXDiDXaKPFVI&callback=console.debug&libraries=maps,marker&v=beta"></script>
		
		<!-- w0616使用 -->
		<link href="https://fonts.googleapis.com/css?family=EB Garamond" rel="stylesheet">
		<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.css' />
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
		<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.0/css/bootstrap.css' />
		<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.css' />
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
		<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.js'></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.js"></script>
	</head>

	<body>
		<nav class="navbar navbar-expand-lg bg_main4 fixed-top">
			<div class="container-fluid" style="margin: 0 20%">
				<button class="navbar-brand text-light me-0" onclick="window.location.href='/Hotel/mvc/index'" style="background: none; border: none; padding: 0; cursor: pointer;">
					<img src="/Hotel/images/logo7.jpg" alt="XX飯店圖片" style="width: 30%;">
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item">
							<a class="nav-link text-light ms-5 fs-4 text-nowrap" href="/Hotel/mvc/about">關於我們</a>
						</li>
						<li class="nav-item">
							<a class="nav-link text-light fs-4 text-nowrap" href="/Hotel/mvc/activity">最新消息</a>
						</li>
						<li class="nav-item">
							<a class="nav-link text-light fs-4 text-nowrap" href="/Hotel/mvc/room_list">客房介紹</a>
						</li>
						<li class="nav-item">
							<a class="nav-link text-light fs-4 text-nowrap" href="/Hotel/mvc/transportation">交通資訊</a>
						</li>
						<c:if test="${user != null}">
							<c:if test="${userType==1}">
								<li class="nav-item">
									<a class="nav-link text-light fs-4 text-nowrap" href="/Hotel/mvc/historyBook">歷史訂單</a>
								</li>
							</c:if>
							<c:if test="${userType==2}">
								<li class="nav-item">
									<a class="nav-link text-light fs-4 text-nowrap" href="/Hotel/mvc/allBookData">所有訂單</a>
								</li>
							</c:if>
						</c:if>
					</ul>
				</div>
				
				<c:if test="${user == null}">
					<i class="bi bi-person-circle fs-4 text-light ml-3 mb-0 text-nowrap" role="button" onclick="window.location.href='/Hotel/mvc/login'">登入</i>
				</c:if>
				<c:if test="${user != null}">
					<p class="text-light mb-0 me-3 fs-4">${user.userName}</p>
					<i class="bi bi-person-circle fs-4 text-light ml-3 mb-0 text-nowrap" role="button" onclick="window.location.href='/Hotel/mvc/logout'">登出</i>
				</c:if>
			</div>
		</nav>
	</body>
</html>