<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/header.jsp"%>
<!DOCTYPE html>
<html lang="zh-TW">
	<head>
	  <meta charset="UTF-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <style>
	   	body {
	   	 width: 90%;
	      font-family: Arial, sans-serif;
	       overflow-x: hidden; 
	    }
	
	    .container {
	      width: 90%;
	      margin: 0 auto;
	      margin-top: 10vh;
	      padding: 0 5%; /* 調整左右邊距 */
	      box-sizing: border-box;
	      flex-wrap: nowrap;
	      flex-direction: column; 
	      display: flex;
	    }
	    
	    .book {
	      margin-left: 10vw;
	      transform: scale(1.5);
	    }
	          
	    .book label, .book button {
	      display: inline-block;
	      margin-left: 10px;
	      margin-top: 10px;
	    }
	    
	    .content-container {
	      display: flex;
	      flex-direction: row; /* 將子元素設置為垂直方向排列 */
	      justify-content: flex-start; 

	    }
	    
	    .roomlist-container {
	      display: flex;
	      flex-direction: column; 
	      width: 100%;
	      margin-right: 0;
	    }
	
	    .room-container {
	      display: flex;
	      flex-direction: column; /* 將子元素設置為垂直方向排列 */
	      box-sizing: border-box;
	      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	      margin-right: 5vw;
	    }
	
	    .room-container, .cart-container {
	      display: flex;
	      flex-direction: row; /* 將子元素設置為垂直方向排列 */
	      box-sizing: border-box;
	      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	      margin-bottom: 20px; 
	    }
	
	    .room-container img {
	      width: 40%; 
	      object-fit: cover;
	    }
	
	    .room-container-text, .cart {
	      padding: 10px;
	      width: 100%;
	    }
	
	    .cart-container {
		  height: 100%; 
		   width:35%;
		}
	
		.cart {
		  height: 100%; 
		  box-shadow: none; 
		}
	
	  </style>
	  <title>訂房</title>
	</head>
	
	<body>

		<div class="container">
		  	<div class="book mb-3">
				<label for="checkin" style="font-size: 16px;"> 入住時間: </label>
				<input type="date" id="checkin" name="checkin" onchange="updateCheckoutDate()" required>
				<label for="checkout"> 退房時間: </label>
				<input type="date" id="checkout" name="checkout" >
				 
				<label for="adult">大人:</label>
				<select id="adult" name="adult">
					<option value="1"> 1人 </option>
					<option value="2"> 2人 </option>
					<option value="3"> 3人 </option>
					<option value="4"> 4人 </option>
				</select>
				
				<label for="child">兒童:</label>
				<select id="child" name="child">
					<option value="0"> 0人 </option>
					<option value="1"> 1人 </option>
					<option value="2"> 2人 </option>
					<option value="3"> 3人 </option>
					<option value="4"> 4人 </option>
				</select>
				
				<button onclick="checkBooking()"> 查詢
					<i class="bi bi-search"></i>
				</button>
			</div> 
			  	
			<div class="content-container">	
				<div class="roomlist-container" id="roomlist-container">
					<c:forEach var="imgPath" items="${roomImgPaths}" varStatus="loopStatus">
					   <div class="room-container" id="room-container">
					     <img src="${roomImgPaths[loopStatus.index]}" alt="Image${roomId[loopStatus.index]}" class="img-fluid" onclick="openModal('${roomImgPaths[loopStatus.index]}')">
					    
					     <div class="room-container-text">
					       <h2>${roomTitle[loopStatus.index]}</h2>
					       <p>房號: ${roomId[loopStatus.index]}</p>
					       <p>${roomContext[loopStatus.index]}</p>
					       <a href="../page5.jsp" class="btn color1 text-light">前往訂房</a>
					     </div>
					   </div>
				    </c:forEach>
				</div>
		  	 
			    <div class="cart-container">
			      <div class="cart">
			        <h2>購物車</h2>
			        <p>商品1: $50</p>
			        <p>商品2: $30</p>
			        <p>總金額: $80</p>
			       
			      </div>
			    </div> 
		    </div>
	  </div>

	<script>
			window.onload = function () {
			    var checkinDateInput = document.getElementById("checkin");
			    var checkoutDateInput = document.getElementById("checkout");
	
			    // 格式化
			    var today = new Date().toISOString().split('T')[0];
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
			// 格式化日期（yyyy-MM-dd）
			function formatDate(date) {
			    const year = date.getFullYear();
			    const month = (date.getMonth() + 1).toString().padStart(2, '0');
			    const day = date.getDate().toString().padStart(2, '0');
			    return `${year}-${month}-${day}`;
			}

			//格式化
			var today = new Date().toISOString().split('T')[0];
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
				 
			     const checkinTime = new Date(document.getElementById('checkin').value);
			     const checkoutTime = new Date(document.getElementById('checkout').value);
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
			     
			 function displayAvailableRooms(availableRooms) {
				    var roomListDiv = document.getElementById("roomlist-container");
				    roomListDiv.innerHTML = ""; // 清空先前的顯示
				  
				    if (availableRooms.length === 0) {
				        roomListDiv.innerHTML = "<p>沒有可用的房間</p>";
				        return;
				    }

				    availableRooms.forEach(function (room) {
				    	console.log(room.roomImgPaths);
				    	var roomImgPaths = room.roomImgPaths;
				    	
				        var roomInfo = document.createElement("div");
				        roomInfo.className = "room-container";
				        roomInfo.innerHTML = `
						     <img src="\${room.roomImgPaths}"  class="img-fluid" onclick="openModal('\${room.roomImgPaths}')">
						    
						     <div class="room-container-text">
						       <h2>\${room.roomTitle}</h2>
						       <p>房號: \${room.roomId}</p>
						       <p>\${room.roomContext}</p>
						       <a href="../page5.jsp" class="btn color1 text-light">前往訂房</a>
						     
						   </div>
				        `;
				        roomListDiv.appendChild(roomInfo);
				    });
				    
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
<%@ include file="/WEB-INF/views/footer.jsp"%>