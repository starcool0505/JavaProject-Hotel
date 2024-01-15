<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/header.jsp" %>

<%

	String[] roomImgPaths = (String[])request.getAttribute("roomImgPaths"); 
	String[] roomTitle = (String[])request.getAttribute("roomTitle"); 
	String[] roomType = (String[])request.getAttribute("roomType"); 
	String[] roomContext = (String[])request.getAttribute("roomContext"); 

%>

<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
	    <link rel="stylesheet" href="./css/main_color.css">
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
	  <title>訂房</title>
	  <style>
	  	body {
		  font-family: Arial, sans-serif;
		  overflow-x: hidden; 
		}
		
		.container {
		  display: flex; 
 		  justify-content: center; 
		  flex-direction: column; 
 		  align-items: center;  
		  margin: 0 auto; 
		  margin-top: 10vh;
		  width: 100vw;
		}
		
		.book {
		    transform: scale(1.5);
		}
		
		.room-preview {
		  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		  margin-top: 20px;
		  position: relative; 
		  width: 60vw;
		}

		.room-preview img {
		  width: 100%;
		  height: auto;
		}
		
		.room-details {
		  padding: 10px;
		}
		
		button {
		  display: block;
		  margin-top: 10px;
		}
		
		.book label,.book button {
		  display: inline-block;
		  margin-left: 10px;
		}
		
	  </style>
	</head>
	<body>
	
		<div class="container">
			    <div class="book mb-3">
			      <label for="checkin" style="font-size: 16px;">入住時間:</label>
			      <input type="date" id="checkin" name="checkin" onchange="updateCheckoutDate()" required>
			      <label for="checkout">退房時間:</label>
			      <input type="date" id="checkout" name="checkout" >
			       
			      <label for="guests">人數:</label>
			      <select id="guests" name="guests">
			        <option value="1">1人</option>
			        <option value="2">2人</option>
			        <option value="3">3人</option>
			        <option value="4">4人</option>
			      </select>
			
			      <button  onclick="checkBooking()">查詢
			      <i class="bi bi-search"></i>
			      </button>
		     </div>
		
		      <div class="room-preview">
				  <img src="images/aroom1.jpg" alt="雙人房型" id="roomImage">
				  <div class="room-details">
			          <p>雙人房型</p>
			          <p>雙床 150*200 X 2</p>
			          <p>坪數：8.5坪/ 28平方公尺</p>
			          <p>衛浴設備：分離式淋浴間、免治馬桶、吹風機</p>
			          <p>衛浴備品：沐浴洗髮乳、潤髮乳、洗手乳</p>
			          <p>舒適設備：英國斯林百蘭床墊、戶外陽台、大金空調、遮光窗簾、室內拖鞋</p>
			          <p>娛樂設施：50吋4K電視、有線頻道、USB充電座、Wi-Fi</p>
			      </div>
		      </div>
  		</div>
	
		<script>
			var checkinDateInput = document.getElementById("checkin");
			//格式化
			var today = new Date().toISOString().split('T')[0];
			// 設置最小日期為今天
			checkinDateInput.setAttribute('min', today);
			
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
				checkoutDate.setAttribute('min', tomorrow);
			 }
	
			 function checkBooking() {
			     const checkinTime = new Date(document.getElementById('checkin').value);
			     const checkoutTime = new Date(document.getElementById('checkout').value);
			
			     if (!checkinTime || !checkoutTime) {
			         alert('請選擇入住和退房時間');
			         return;
			     }
			     const guests = document.getElementById('guests').value;
			 }
		</script>
	</body>
</html>


<%@ include file="/WEB-INF/views/footer.jsp" %>