<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List" %>
<%@ page isELIgnored="false" %>

<%@ include file="/WEB-INF/views/header.jsp" %>

<section class="bg_main0" style="min-height: 97.6vh; padding-top: 68px;">
	<div class="container m-0 position-absolute top-50 start-50 translate-middle" style="margin: 0 20%">
		<h3>客房列表</h3>
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
		<div class="position-absolute end-0 col-2 mt-5">
			<button type="button" class="btn color2 text-light font-weight-bold fs-4" style="width: 100%; border-radius: 50%;" onclick="goToReservation()">前往訂房</button>
		</div>
	</div>
</section>

<script>
	// 當按下前往訂房按鈕時觸發
	function goToReservation()
	{
		// 使用AJAX檢查使用者是否已登入
		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = function()
		{
			if (xhr.readyState === 4)
			{
				if (xhr.status === 200)
				{
					// 使用者已登入，直接前往訂房頁面
					window.location.href = '/Hotel/mvc/testBook';
				}
				else
				{
					// 使用者未登入，導向登入頁面
					window.sessionStorage.setItem('currentPage',window.location.href);
					window.location.href = '/Hotel/mvc/login';
				}
			}
		};
		xhr.open('GET', '/Hotel/mvc/checkLogin', true);
		xhr.send();
	}
</script>

<%@ include file="/WEB-INF/views/footer.jsp" %>