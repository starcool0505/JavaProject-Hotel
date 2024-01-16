<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
	<head>
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
			<c:forEach var="imgPath" items="${roomImgPaths}" varStatus="loopStatus">
				<c:if test="${loopStatus.index%3==0}">
					<div class="row mt-3">
				</c:if>
				<div class="col-md-4">
					<div class="image-container">
						<img src="${roomImgPaths[loopStatus.index]}" alt="Image${roomId}" class="img-fluid">
						<div class="image-description">
							<div class="d-flex h-20 justify-content-between align-items-center" style="font-weight: bold; color: #180A0A">
								<p style="font-size: 24px;">${roomTitle[loopStatus.index]}</p>
								<p style="font-size: 18px;">${roomType[loopStatus.index]}</p>
							</div>
							<div style="height: 80%;">
								<p>${roomContext[loopStatus.index]}</p>
								<div class="mt-3 text-center">
									<a href="page3/room_index/${roomId[loopStatus.index]}" class="btn color1 text-light">了解更多</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<c:if test="${(loopStatus.index+1)%3==0 or loopStatus.last}">
					</div>
				</c:if>
			</c:forEach>
		</div>
	</body>
</html>

<%@ include file="/WEB-INF/views/footer.jsp" %>