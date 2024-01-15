<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
	<body class="bg_main0 vh-100">
		<section class="HomePicture">
			<div>
				<img src="images/pic1.jpg" class="img-fluid" alt="...">
				<div class="centered-text">
					<span>Welcome to the hotel</span>
				</div>
			</div>
		</section>
	
		<section class="NewsPreviewTitle">
			<h2>消息預覽</h2>
		</section>
		
		<div class=Newsbg>
			<section class="NewsPreview">
			<div class="center"> <!-- 引入slick畫面輪播 class取為center 要跟官網的套件同名 不然抓不到-->
				<div>
					<div class="custom-button" onclick="window.location.href='/Hotel/page2_1.jsp?post=0'">
						<img src="images/pic24.jpg" alt="" >
					</div>
					<h5>富貴圓龍，好運龍來</h5>
				</div>
				
				<div>
					<div class="custom-button" onclick="window.location.href='/Hotel/page2_1.jsp?post=1'">
						<img src="images/pic25.jpg" alt=""> 
					</div>
					<h5>跨年表演•音樂派對</h5>
				</div>
				
				<div>
					<div class="custom-button" onclick="window.location.href='/Hotel/page2_1.jsp?post=2'">
						<img src="images/pic26.jpg" alt=""> 
					</div>
						<h5>聖誕豪華之旅</h5>
				</div>
				
				<div>
					<div class="custom-button" onclick="window.location.href='/Hotel/page2_1.jsp?post=3'">
						<img src="images/pic27.jpg" alt=""> 
					</div>
					<h5>冬至搓湯圓•手作湯圓</h5>
				</div>
				
				<div>
					<div class="custom-button" onclick="window.location.href='/Hotel/page2_1.jsp?post=4'">
						<img src="images/pic28.jpg" alt="">
					</div>
					<h5>鍛鍊金工•手作體驗</h5> 
				</div>
				
				<div>
					<div class="custom-button" onclick="window.location.href='/Hotel/page2_1.jsp?post=5'">
						<img src="images/pic29.jpg" alt="">
					</div>
					<h5>螃蟹產季•饗您味蕾</h5>
				</div>
			</div>
			</section>
		</div>
		<div class="spacer"></div>
		<section class="RoomPreviewTitle"  >
			<div>
				<h2>房型預覽</h2>
			</div>
		</section>
		
		<div class=Roombg>
			<div class="spacer"></div>
			<section class="RoomPreview">
				<div class="room-container1">
					<div class="writePreview1">
						<div class="write1" >
							<h2>雙人房</h2>
							<p>適合情侶或好友，提供舒適的住宿體驗，讓入住者享有私密和放鬆的空間。</p>
						</div>
						<div class="write2">
							<p>綠意雙人房</p>
							<p>海景雙人房</p>
							<p>藍天雙人房</p>
						</div>
					</div >
					<img src="images/s-room-1.jpg" alt="房間圖片">
				</div>
				
				<div class="room-container2">
				<div class="writePreview2">
					<div class="write3">
						<h2>四人房</h2>
						<p>適合家庭或一小群好友入住，有更寬敞的客廳空間和附加的娛樂設施。</p>
					</div>
					<div class="write4">
						<p>家庭四人房</p>
						<p>溫馨四人房</p>
						<p>太陽四人房</p>
					</div>
				</div>
				<img src="images/s-room-5.jpg" alt="房間圖片">
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

<%@ include file="/WEB-INF/views/footer.jsp" %>