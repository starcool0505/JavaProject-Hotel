<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/header.jsp" %>


<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
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
		
		.image-container{
			position: relative;
			overflow: hidden;
			width: 100%;
			cursor: pointer;
		}
		.image-description{
			position: absolute;
			bottom: 0;
			left: 0;
			width: 100%;
			height: 100%;
			background-color: rgba(235, 227, 213, 0.5);
			color: #000;
			padding: 10px;
		}
		.modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7);
            justify-content: center;
            align-items: center;
        }

        .modal img {
            max-width: 80%;
            max-height: 80%;
        }
	  </style>
	</head>
	<body>
		<div class="container">
			<div class="book mb-3">
				<label for="checkin" style="font-size: 16px;"> 入住時間: </label>
				<input type="date" id="checkin" name="checkin" onchange="updateCheckoutDate()" required>
				<label for="checkout"> 退房時間: </label>
				<input type="date" id="checkout" name="checkout" >
				 
				<label for="guests">人數:</label>
				<select id="guests" name="guests">
					<option value="1"> 1人 </option>
					<option value="2"> 2人 </option>
					<option value="3"> 3人 </option>
					<option value="4"> 4人 </option>
				</select>
				
				<button  onclick="checkBooking()"> 查詢
					<i class="bi bi-search"></i>
				</button>
		     </div> 
		
			 <h3 class="mt-2 mb-2" style="top: -10%;">客房列表</h3>
			 <div class="room-preview m-0 " style="margin: 0 20%">
				
				<c:forEach var="imgPath" items="${roomImgPaths}" varStatus="loopStatus">
					
					<div class="row mt-3">
						<div class="image-container d-flex align-items-center justify-content-center">
							<img src="${roomImgPaths[loopStatus.index]}" alt="Image${roomId}" class="img-fluid">
							
							<!-- Modal for large image -->
							<div id="myModal" class="modal" onclick="closeModal()">
							    <img src="${roomImgPaths[loopStatus.index]}" id="modalImg" alt="Large Image">
							</div>
							
							<div class="image-description">
								<div class="d-flex h-20 justify-content-between align-items-center" style="font-weight: bold; color: #180A0A">
									<p style="font-size: 24px;">房型${roomTitle[loopStatus.index]}</p>
									<p style="font-size: 18px;">${roomType[loopStatus.index]}</p>
								</div>
								<div style="height: 80%;">
									<p>${roomContext[loopStatus.index]}</p>
									<div class="mt-3 text-center">
										<a href="./page3/room_index/${roomId[loopStatus.index]}" class="btn color1 text-light">了解更多</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				 </c:forEach>
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
			 
			 function openModal(imageSrc) {
			        var modal = document.getElementById("myModal");
			        var modalImg = document.getElementById("modalImg");

			        modal.style.display = "flex"; // 顯示 modal
			        modalImg.src = imageSrc; // 設置大圖的來源
			 }

			 function closeModal() {
			        var modal = document.getElementById("myModal");
			        modal.style.display = "none"; // 隱藏 modal
			 }
		</script>
	</body>
</html>


<%@ include file="/WEB-INF/views/footer.jsp" %>