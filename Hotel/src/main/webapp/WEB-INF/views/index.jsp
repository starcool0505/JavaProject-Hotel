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
					<div class="book mb-3">
					<label for="checkin"> 入住時間: </label>
					<input type="date" id="checkin" name="checkin" onchange="updateCheckoutDate()" required>
					<label for="checkout"> 退房時間: </label>
					<input type="date" id="checkout" name="checkout" >
					
					<label for="adult">成人:</label>
					<select id="adult" name="adult">
						<option value="1"> 1人 </option>
						<option value="2"> 2人 </option>
						<option value="3"> 3人 </option>
						<option value="4"> 4人 </option>
					</select>
					
					<label for="child">兒童(12歲以下):</label>
					<select id="child" name="child">
						<option value="0"> 0人 </option>
						<option value="1"> 1人 </option>
						<option value="2"> 2人 </option>
						<option value="3"> 3人 </option>
						<option value="4"> 4人 </option>
					</select>
					
					<button onclick="checkBooking()" style="margin-left: 3vw"> 訂房</button>
					</div>
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
			
			var today = new Date().toISOString().split('T')[0];
			window.onload = function () {
			    var checkinDateInput = document.getElementById("checkin");
			    var checkoutDateInput = document.getElementById("checkout");

			    // 格式化
			    checkinDateInput.setAttribute('min', today);
			    checkinDateInput.value = today;

			    // 計算隔天日期
			    var nextDay = new Date();
			    nextDay.setDate(nextDay.getDate() + 1);

			    // 設定 checkout 的預設值為隔天
			    checkoutDateInput.valueAsDate = nextDay;

			    // 格式化
			    var tomorrow = nextDay.toISOString().split('T')[0];
			    checkoutDateInput.setAttribute('min', tomorrow);
			};
			
			var checkinDateInput = document.getElementById("checkin");
			var checkoutDateInput = document.getElementById("checkout");
			
			function updateCheckoutDate() {
			    var checkoutDate = document.getElementById("checkout");
			    var checkinDate = new Date(checkinDateInput.value);

			    // 計算隔天日期
			    var nextDay = new Date(checkinDate);
			    nextDay.setDate(nextDay.getDate() + 1);

			    // 將退房日期設為隔天日期
			    checkoutDate.valueAsDate = nextDay;
			 	//格式化  
				var tomorrow = nextDay.toISOString().split('T')[0];
				// 設置最小日期為隔天
			 	checkoutDate.setAttribute('min', tomorrow);
			 }
			
			function checkBooking() {
				 const checkin = document.getElementById('checkin').value;
				 const checkout = document.getElementById('checkout').value;
			     const guests = parseInt(document.getElementById('adult').value, 10) + parseInt(document.getElementById('child').value, 10);
			    
			     // 使用 AJAX 向後端發送請求
			     $.ajax({
			         type: 'GET',
			         url: 'searchRoom/showRooms',
			         data: {
			             checkinDate: checkin,
			             guests: guests
			         },
			         success: function (data) {
			             // data 是從後端返回的 List<Book>
			        	 displayAvailableRooms(data);
			         },
			         error: function (jqXHR, textStatus, errorThrown) {
			             // 在控制台輸出詳細錯誤信息
			             console.error('AJAX Error:', textStatus, errorThrown);
			             alert('查詢出現錯誤');
			         }
			     });
			 }
		</script>
	</body>
</html>

<%@ include file="/WEB-INF/views/footer.jsp"%>