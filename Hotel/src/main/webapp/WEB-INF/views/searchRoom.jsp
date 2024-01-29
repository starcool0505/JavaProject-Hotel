<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/header.jsp"%>

<!DOCTYPE html>
<html lang="zh-TW">
	<head>
	  <meta charset="UTF-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <link rel="stylesheet" href="/Hotel/css/searchRoom_css.css">
	  <title>訂房</title>
	</head>
	
	<body>
		<div class="container">
		  	<div class="book mb-3">
				<label for="checkin" style="font-size: 16px;"> 入住時間: </label>
				<input type="date" id="checkin" name="checkin" onchange="updateCheckoutDate()" value="${ chcekinDate }" required>
				<label for="checkout"> 退房時間: </label>
				<input type="date" id="checkout" name="checkout" value="${ checkoutDate }" >
				<label for="adult">成人：</label>
				<select id="adult" name="adult">
					<option value="1" ${ adult == 1 ? 'selected':'' }> 1人 </option>
					<option value="2" ${ adult == 2 ? 'selected':'' }> 2人 </option>
					<option value="3" ${ adult == 3 ? 'selected':'' }> 3人 </option>
					<option value="4" ${ adult == 4 ? 'selected':'' }> 4人 </option>
				</select>
				
				<label for="child">兒童(12歲以下)：</label>
				<select id="child" name="child">
					<option value="0" ${ child == 0 ? 'selected':'' }> 0人 </option>
					<option value="1" ${ child == 1 ? 'selected':'' }> 1人 </option>
					<option value="2" ${ child == 2 ? 'selected':'' }> 2人 </option>
					<option value="3" ${ child == 3 ? 'selected':'' }> 3人 </option>
					<option value="4" ${ child == 4 ? 'selected':'' }> 4人 </option>
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
					       <a class="btn color1 text-light" onclick="redirectToBooking(${roomId[loopStatus.index]})">前往訂房</a>
					     </div>
					   </div>
				    </c:forEach>
				</div>
		  	 
			    <div class="cart-container">
			      <div class="cart">
			        <h3 style="text-align: center">我的購物車</h3>
			        <p>商品1: $50</p>
			        <p>商品2: $30</p>
			        <p>總金額: $80</p>
			       
			      </div>
			    </div> 
		    </div>
	  </div>

	<script>
	        
			window.onload = function () {
				
				if(!${refresh}) {
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
				}
				
			    
				if(${refresh}) {
					checkBooking();
				}
			};

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
			             checkoutDate: checkout,
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
				    	var roomImgPaths = room.roomImgPaths;
				        var roomInfo = document.createElement("div");
				        
				        roomInfo.className = "room-container";
				        roomInfo.innerHTML = `
						     <img src="\${room.roomImgPaths}"  class="img-fluid" onclick="openModal('\${room.roomImgPaths}')">
						    
						     <div class="room-container-text">
						       <h2>\${room.roomTitle}</h2>
						       <p>房號: \${room.roomId}</p>
						       <p>\${room.roomContext}</p>
						       <a class="btn color1 text-light" onclick="redirectToBooking(\${room.roomId})">前往訂房</a>
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
			 
			 function redirectToBooking(roomId) {
				 var checkInDate = encodeURIComponent(document.getElementById('checkin').value);
				 var checkOutDate = encodeURIComponent(document.getElementById('checkout').value);
				 var adult = encodeURIComponent(document.getElementById('adult').value);
				 var child = encodeURIComponent(document.getElementById('child').value);
				 var roomId = encodeURIComponent(roomId);  
				 // 使用 window.location.href 修改網址(/Hotel/mvc/book?checkInDate=2024-01-26&checkOutDate=2024-01-27&guests=1&roomId=201)
			 	 window.location.href = "/Hotel/mvc/book?checkInDate=" + checkInDate + "&checkOutDate=" + checkOutDate 
			 			 + "&adult=" + adult + "&child=" +child + "&roomId=" + roomId;
			}
		</script>

	</body>
</html>
<%@ include file="/WEB-INF/views/footer.jsp"%>