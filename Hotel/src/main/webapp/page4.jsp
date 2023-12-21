<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/header.jsp"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
		<link rel="stylesheet" href="./css/main_color.css">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
		<script async src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDrwdSb-WZgrv3mLogWyURlXDiDXaKPFVI&callback=console.debug&libraries=maps,marker&v=beta"></script>
		<style>
			.bg_main0
			{
				background-color: #f0f0f0; /* Set the background color as needed */
			}
			.content-container
			{
				margin: 0 10%;
				display: flex;
				height: 100vh;
			}
			.left-sidebar, .right-sidebar
			{
				flex: 1;
				background-color: #f0f0f0;
				padding: 20px;
			}
			.map-container
			{
				flex: 4;
				width: 100%;
				display: flex;
			}
			.icon-container
			{
				display: flex;
				gap: 10px;
				align-items: center;
			}
			.icon-image img
			{
				width: 40px;
				height: 40px;
			}
			.contact-info-container
			{
				display: flex;
				flex-direction: row;
				align-items: baseline;
			}
			.tel-info, .email-info
			{
				text-align: center;
				white-space: nowrap;
			}
		</style>
	</head>
	
	<body class="bg_main0">
		<div class="mt-3 mb-3 d-flex justify-content-center">交通資訊</div>
		<div class="content-container">
			<div class="map-container">
				<gmp-map center="25.05818748474121,121.54263305664062" zoom="16" map-id="DEMO_MAP_ID">
					<gmp-advanced-marker position="25.05818748474121,121.54263305664062" title="Hotel"></gmp-advanced-marker>
				</gmp-map>
			</div>
			<div class="right-sidebar">
				<div class="icon-container">
					<div class="icon-image">
						<img src="images/telephone.png" alt="Telephone Icon">
					</div>
					<div class="icon-image">
						<img src="images/email.png" alt="Email Icon" title="email">
					</div>
				</div>
				<div class="contact-info-container">
					<div class="tel-info">
						<div>
							<p>TEL:</p>
							<p>+886-3-2251234</p>
						</div>
					</div>
					<div class="email-info">
						<div>
							<p>Email:</p>
							<p>abcde@gmail.com</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>

<%@ include file="/WEB-INF/views/footer.jsp"%>