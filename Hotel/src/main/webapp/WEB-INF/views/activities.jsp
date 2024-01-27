<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="/WEB-INF/views/header.jsp"%>

<!DOCTYPE html>
<html>
	<link rel="stylesheet" href="/Hotel/css/activities_css.css">
	<div class="spacer"></div> 
	<body class="bg_main0 vh-100">
		<h2 style="margin: 0 20%">最新消息</h2>
		<section class="news-list" style="margin-top: 20px;">
			<c:forEach items="${ activities }" var="activity">
				<div class="row justify-content-center align-items-center custom-button" onclick="window.location.href='/Hotel/mvc/activity/${activity.activityId}'">
					<div class="col-9 fs-5">
						<p>日期：<fmt:formatDate type="date" value="${ activity.activityDate }" /></p>
						<p>${ activity.activityName }</p>
						<p>${ activity.activityDescription }</p>
					</div>
					<img class="col-3" src="${ activity.activityImgPath }" alt="年菜圖片" class="custom-img">
				</div>
			</c:forEach>
		</section>
		<script>
			window.onload = function()
			{
				const breakAfter37 = document.querySelectorAll('.break-after-37');
				breakAfter37.forEach((element) =>
				{
					const text = element.textContent;
					const breakPosition = 37;
					const newText = text.slice(0, breakPosition) + '<br>' + text.slice(breakPosition);
					element.innerHTML = newText;
				});
			};
		</script>
	</body>
</html>

<%@ include file="/WEB-INF/views/footer.jsp"%>