<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="/WEB-INF/views/header.jsp"%>

<!DOCTYPE html>
<html>
	<link rel="stylesheet" href="/Hotel/css/activity_css.css">
	<body class="bg_main0 vh-100">
		<div class="spacer"></div>
		<div class="activity-img">
			<h2>活動介紹</h2>
			<img src="${ activity.activityImgPath }" alt="活動圖片">
		</div>
	
		<div class="activity-info">
			<!-- 活動名字 -->
			<div class="info-item">
				<div class="info-label">活動名字:</div>
				<p class="info-content">${ activity.activityName }</p>
			</div>
	
			<!-- 活動日期 -->
			<div class="info-item">
				<div class="info-label">活動日期:</div>
				<p class="info-content">
					<fmt:formatDate type="date" value="${ activity.activityDate }" />
				</p>
			</div>
	
			<!-- 活動內容介紹 -->
			<div class="info-item">
				<div class="info-label">活動內容:</div>
				<p class="info-content">${ activity.activityDescription }</p>
			</div>
		</div>
		<%
		//}
		%>
		<div class="spacer"></div>
	</body>
</html>
<%@ include file="/WEB-INF/views/footer.jsp"%>