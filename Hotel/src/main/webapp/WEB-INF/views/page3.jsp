<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<%@ include file="/WEB-INF/views/header.jsp" %>

<%
	List<Integer> roomId = (List<Integer>)request.getAttribute("roomId");
	List<String> roomImgPaths = (List<String>)request.getAttribute("roomImgPaths"); 
	List<String> roomTitle = (List<String>)request.getAttribute("roomTitle"); 
	List<String> roomType = (List<String>)request.getAttribute("roomType"); 
	List<String> roomContext = (List<String>)request.getAttribute("roomContext"); 
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
		<link rel="stylesheet" href="../css/main_color.css">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
		<style>
			.image-container
			{
				position: relative;
				overflow: hidden;
				width: 100%;
			}
			.image-description
			{
				position: absolute;
				bottom: 0;
				left: 0;
				width: 100%;
				height: 100%;
				background-color: rgba(235, 227, 213, 0.5);
				color: #000;
				padding: 10px;
				transform: translateY(80%);
				transition: transform 0.3s;
			}
			.image-container:hover
			.image-description
			{
				background-color: rgb(235, 227, 213);
				transform: translateY(0);
			}
		</style>
	</head>
	
	<body class="bg_main0 vh-100 position-relative">
		<div class="container m-0 position-absolute top-50 start-50 translate-middle" style="margin: 0 20%">
			<h3 class="position-absolute" style="top: -10%;">客房列表</h3>
			<% 
				for(int i=0; i< roomImgPaths.size(); i++)
				{
					if(i%3==0)
					{
			%>
						<div class="row mt-3">
			<%
					}
			%>
					<div class="col-md-4">
						<div class="image-container">
							<img src="<%= roomImgPaths.get(i) %>" alt="Image<%= i%>" class="img-fluid">
							<div class="image-description">
								<div class="d-flex h-20 justify-content-between align-items-center" style="font-weight: bold; color: #180A0A">
									<p style="font-size: 24px;"><%= roomTitle.get(i) %></p>
									<p style="font-size: 18px;"><%= roomType.get(i) %></p>
								</div>
								<div style="height: 80%;">
									<p><%= roomContext.get(i) %></p>
									<div class="mt-3 text-center">
										<a href="./page3/room_index/<%= roomId.get(i) %>" class="btn color1 text-light">了解更多</a>
									</div>
								</div>
							</div>
						</div>
					</div>
			<% 
					if( (i+1)%3==0 || (i+1)==roomImgPaths.size())
					{
			%>
						</div>
			<% 
					}
				}
			%>
		</div>
	</body>
</html>

<%@ include file="/WEB-INF/views/footer.jsp" %>