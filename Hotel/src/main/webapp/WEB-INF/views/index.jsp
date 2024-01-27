<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="/WEB-INF/views/header.jsp"%>

<!DOCTYPE html>
<html>
	<link rel="stylesheet" href="/Hotel/css/index_css.css">
	<body class="bg_main0 vh-100">
		<section class="HomePicture">
			<div>
				<img src="/Hotel/images/pic1.jpg" class="img-fluid" alt="...">
				<!-- 絕對路徑/Hotel/ -->
				<div class="centered-text">
					<span>Welcome to the hotel</span>
				</div>
			</div>
		</section>
		<div class="spacer"></div>
		<section class="NewsPreviewTitle">
			<h2>消息預覽</h2>
		</section>
		<div class="spacer"></div>
		<div class=Newsbg>
			<section class="NewsPreview">
					<div class="center">
						<c:forEach var="activity" items="${activities}" varStatus="loopStatus">
							<div>
								<div class="custom-button" onclick="window.location.href='/Hotel/mvc/activity/${activity.activityId}'">
									<img src="${activity.activityImgPath}" alt="">
								</div>
								<h5>${activity.activityName}</h5>
							</div>
						</c:forEach>
					</div>
			</section>
		</div>
		<div class="spacer"></div>
		<section class="RoomPreviewTitle">
			<div>
				<h2>房型預覽</h2>
			</div>
		</section>
	
		<div class=Roombg>
			<div class="spacer"></div>
			<section class="RoomPreview">
				<div class="room-container1">
					<div class="writePreview1">
						<div class="write1">
							<h2>雙人房</h2>
							<p>適合情侶或好友，提供舒適的住宿體驗，<br>讓入住者享有私密和放鬆的空間。</p>
						</div>
						<div class="write2">
							<p>綠意雙人房</p>
							<p>海景雙人房</p>
							<p>藍天雙人房</p>
						</div>
					</div>
					<img src="/Hotel/images/s-room-1.jpg" alt="房間圖片">
				</div>
	
				<div class="room-container2">
					<div class="writePreview2">
						<div class="write3">
							<h2>四人房</h2>
							<p>有更寬敞的客廳空間和附加的娛樂設施，<br>適合家庭或一小群好友入住。</p>
						</div>
						<div class="write4">
							<p>家庭四人房</p>
							<p>溫馨四人房</p>
							<p>太陽四人房</p>
						</div>
					</div>
					<img src="/Hotel/images/s-room-5.jpg" alt="房間圖片">
				</div>
			</section>
		</div>
		<!-- slick畫面輪播 使用Center Mode -->
		<script>
			$('.center').slick({
			       centerMode: true,
			       centerPadding: '60px',
			       slidesToShow: 3,
			       responsive: [
			         {
			           breakpoint: 768,
			           settings: {
			             arrows: true,
			             centerMode: true,
			             centerPadding: '40px',
			             slidesToShow: 3
			           }
			         },
			         {
			           breakpoint: 480,
			           settings: {
			             arrows: true,
			             centerMode: true,
			             centerPadding: '40px',
			             slidesToShow: 1
			           }
			         }
			       ]
			     });
		</script>
	</body>
</html>

<%@ include file="/WEB-INF/views/footer.jsp"%>