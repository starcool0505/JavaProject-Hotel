<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
	    <link rel="stylesheet" href="./css/main_color.css">
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
	  <title>訂單完成</title>
	  <style>
	  	body {
		  margin: 0;
		  font-family: Arial, sans-serif;
		  overflow-x: auto;
		}
		
		.container {
		  display: flex;
		  justify-content: center;
		  flex-direction: column;
		  align-items: center; 
		  margin-left: 10%;
		  margin-right: 10%;
		  margin-top: 5%;
		  position: relative;
		 
		}
		
		.booking-form {
		   margin: 0 10%;
		}
		
		.room-preview {
		  width: 100%;
		  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		  margin-top: 20px;
		  position: relative;
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
		
		.popup {
		  display: none;
		  position: fixed;
		  top: 50%;
		  left: 50%;
		  transform: translate(-50%, -50%);
		  padding: 20px;
		  background-color: #fff;
		  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		  z-index: 2;
		}
		
		.arrow {
		  position: absolute;
		  top: 50%;
		  transform: translateY(-50%);
		  font-size: 24px;
		  cursor: pointer;
		  background: none;
		  border: none;
		  color: #fff;
		  outline: none;
		}
		
		#prevArrow {
		  left: 10px;
		}
		
		#nextArrow {
		  right: 10px;
		}
	  </style>
	</head>
	<body>
	
		<div class="container">
		    <div class="booking-form">
		      <label for="checkin">入住時間:</label>
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
		
		      <button onclick="checkBooking()">查詢</button>
		
		      <div class="room-preview">
				  <button class="arrow" id="prevArrow">&lt;</button>
				  <img src="images/aroom1.jpg" alt="雙人房型" id="roomImage">
				  <button class="arrow" id="nextArrow">&gt;</button>
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
  		</div>
	
		<script>
		 var checkinDate = document.getElementById("checkin");
		// 設置最小日期为今天
		  checkinDate.setAttribute('min', today);
		//格式化
		  var today = new Date().toISOString().split('T')[0];
		
		  function updateCheckoutDate() {
		     
		      var checkoutDate = document.getElementById("checkout");

		      // 獲取選擇的訂房日期
		      var checkinDate = new Date(checkinDate.value);
		      
		      
		      // 計算隔天日期
		      var nextDay = new Date(checkinDate);
		      nextDay.setDate(checkinDate.getDate() + 1);

		      // 將退房日期設為隔天日期
		      checkoutDateInput.valueAsDate = nextDay;
		      
				
				
				
				  
				  var tomorrow = new Date();
				  tomorrow.setDate(tomorrow.getDate()+1);
				  var tomorrowFormat = tomorrow.toISOString().split('T')[0];
				  var dateOutput = document.getElementById('checkout');
				  dateOutput.setAttribute('min', tomorrow);
		    }



    
    function checkBooking() {
        const checkinTime = new Date(document.getElementById('checkin').value);
        const checkoutTime = new Date(document.getElementById('checkout').value);

        if (!checkinTime || !checkoutTime) {
            alert('請選擇入住和退房時間');
            return;
        }

        if (checkoutTime <= checkinTime) {
            alert('退房時間需在入住時間之後');
            return;
        }

        const guests = document.getElementById('guests').value;
    }
</script>
	</body>
</html>



<%@ include file="/WEB-INF/views/footer.jsp" %>