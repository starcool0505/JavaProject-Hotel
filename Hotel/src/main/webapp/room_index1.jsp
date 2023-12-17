<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="data.RoomData" %>

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
		<style>
			.custom-container
			{
				max-width: 20%;
				margin: 0;
			}
			.list-unstyled
			{
				list-style-type: none;
				padding: 0;
				margin: 0;
			}
		</style>
	</head>
	
	<body class="bg_main0" style="min-height: 100%">
		<div class="position-relative text-center" style="margin: 0 20%; margin-top: 10vh">
			<div class="fs-1">房型介紹</div>
			<div>
				<img alt="Image 1" src="imgs/room-1.jpg" class="mt-3">
			</div>
			<div class="row" style="max-height: auto;">
				<div class="col-2 custom-container">
					<%
						for(int i=0; i<RoomData.roomImgTitle.length; i++)
						{
							if(i==0)
							{
					%>
								<div class="row fs-3 m-3 d-flex justify-content-start">其他房型</div>
								<div class="row d-flex d-flex justify-content-start">
					<%
							}
					%>
						<div class="col-2">
							<button type="button" class="btn bg_main3 mb-4 text-light" style="min-width: 10vw;"><%= RoomData.roomImgTitle[i] %></button>
						</div>
						<div class="w-100"></div>
					<%
						}
					%>
								</div>
				</div>
				<div class="col-5 text-start ms-5">
					<h1 class="mt-3">標題</h1>
					<p>內容</p>
					<div class="fs-3">價格</div>
					<div class="row mt-3">
						<div class="col">樓層：內容</div>
						<div class="col">坪數：內容</div>
					</div>
					<div class="row">
						<div class="col">床數：內容</div>
						<div class="col">人數：內容</div>
					</div>
					<div class="mt-3">
						<button type="button" class="btn bg_main3 text-light">前往訂房</button>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>

<%@ include file="/WEB-INF/views/footer.jsp" %>