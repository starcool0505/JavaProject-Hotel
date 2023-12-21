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
	    <script async src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDrwdSb-WZgrv3mLogWyURlXDiDXaKPFVI&callback=console.debug&libraries=maps,marker&v=beta"></script>
	  <title>訂單完成</title>
	  <style type="text/css">
	  	body {
		  margin: 0;
		  font-family: Arial, sans-serif;
		}
		
		.container {
		  display: flex;
		  flex-direction: column;
		  align-items: center; 
		  margin: 0 10%;
		}
		
		.booking-form {
		  width: 100%;
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
      <input type="datetime-local" id="checkin" name="checkin" min="" required>
      
      <label for="checkout">退房時間:</label>
      <input type="datetime-local" id="checkout" name="checkout" min="" required>

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
		  <img src="./image/room1.jpg" alt="雙人房型" id="roomImage">
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
			//cument.getElementById('roomImage').addEventListener('click', function() {
			//  // 創建彈出視窗
			//  const popup = document.createElement('div');
			//  popup.className = 'image-popup';
			//  
			//  // 創建大圖片元素
			//  const largeImage = document.createElement('img');
			//  largeImage.src = 'room_large_image.jpg'; // 更大的圖片 URL
			//  largeImage.alt = '雙人房型';
			//  
			//  // 將大圖片添加到彈出視窗
			//  popup.appendChild(largeImage);
			//  
			//  // 添加關閉按鈕
			//  const closeButton = document.createElement('span');
			//  closeButton.className = 'close-button';
			//  closeButton.innerHTML = '&times;'; // 用 X 表示關閉
			//  closeButton.addEventListener('click', function() {
			//    popup.remove(); // 關閉彈出視窗
			//  });
			//  popup.appendChild(closeButton);
			//  
			//  // 將彈出視窗添加到 body 中
			//  document.body.appendChild(popup);
			//});
			  
			  document.addEventListener('DOMContentLoaded', function() {
				    const images = ["room1.jpg", "room2.jpg", "room3.jpeg"];
				    let currentIndex = 0;

				    // 更新圖片顯示
				    function updateImage() {
				      const roomImage = document.getElementById('roomImage');
				      roomImage.src = images[currentIndex];
				    }

				    // 點擊箭頭切換圖片
				    document.getElementById('prevArrow').addEventListener('click', function() {
				      currentIndex = (currentIndex - 1 + images.length) % images.length;
				      updateImage();
				    });

				    document.getElementById('nextArrow').addEventListener('click', function() {
				      currentIndex = (currentIndex + 1) % images.length;
				      updateImage();
				    });

				    // 初始載入
				    updateImage();
				  });
	  </script>
	</body>
</html>



<%@ include file="/WEB-INF/views/footer.jsp" %>