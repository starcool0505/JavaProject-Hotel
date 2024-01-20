<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List" %>
<%@ page isELIgnored="false" %>

<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
	<body class="bg_main0 vh-100 position-relative">
		<div class="container m-0 position-absolute top-50 start-50 translate-middle" style="margin: 0 20%">
			<h3 class="position-absolute" style="top: -10%;">客房列表</h3>
			<c:forEach var="room" items="${rooms}" varStatus="loopStatus">
				<c:if test="${loopStatus.index%3==0}">
					<div class="row mt-3">
				</c:if>
				<div class="col-md-4">
					<div class="s-image-container">
						<img src="${room.roomImgPaths}" alt="Image${room.roomId}" class="img-fluid">
						<div class="s-image-description">
							<div class="d-flex h-20 justify-content-between align-items-center" style="font-weight: bold; color: #180A0A">
								<p style="font-size: 24px;">${room.roomTitle}</p>
								<p style="font-size: 18px;">${room.roomType}</p>
							</div>
							<div style="height: 80%;">
								<p>${room.roomContext}</p>
								<div class="mt-3 text-center">
									<a href="room_list/room_index/${room.roomId}" class="btn color1 text-light">了解更多</a>
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