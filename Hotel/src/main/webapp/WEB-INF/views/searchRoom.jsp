<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/header.jsp" %>


<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
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
		}
		
		.image-container img {
            width: 40%;
            height: auto;
            cursor: zoom-in;
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
				
				<button  onclick="checkBooking()"> 查詢
					<i class="bi bi-search"></i>
				</button>
		     </div> 
		
			 <h3 class="mt-2 mb-2" style="top: -10%;">客房列表</h3>
			 <div class="room-preview m-0 " id="room-preview" style="margin: 0 20%">
				<c:forEach var="imgPath" items="${roomImgPaths}" varStatus="loopStatus">
				
					<div class="row mb-2">
						<div class="image-container d-flex align-items-center justify-content-space-between">
							<img src="${roomImgPaths[loopStatus.index]}" alt="Image${roomId}" class="img-fluid" onclick="openModal('${roomImgPaths[loopStatus.index]}')">
							
							<!-- 圖片放大 -->
							<div id="myModal" class="modal" onclick="closeModal()">
							    <img src="${roomImgPaths[loopStatus.index]}" id="modalImg" alt="Large Image">
							</div>
							
							<div class="text-container" style="width: 60%; padding: 0 20px">
								<div class="d-flex h-20 justify-content-between align-items-center" style="font-weight: bold; color: #180A0A">
									<p style="font-size: 24px;">${roomTitle[loopStatus.index]}</p>
										<p style="font-size: 18px;">房號: ${roomId[loopStatus.index]}</p>
										<p style="font-size: 18px;">${equName[loopStatus.index]}</p>
								</div>
								<div style="height: 80%;">
									<p>${roomContext[loopStatus.index]}</p>
									<div class="mt-3 text-center">
										<a href="../page5.jsp" class="btn color1 text-light">前往訂房</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				 </c:forEach>
  			 </div>
  		</div>
	
		<div class="room-preview m-0" style="margin: 0 20%">
		    <div id="room-list">
		        <!-- 這裡將顯示可用房間的列表 -->
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
				    var roomListDiv = document.getElementById("room-preview");
				    roomListDiv.innerHTML = ""; // 清空先前的顯示

				    if (availableRooms.length === 0) {
				        roomListDiv.innerHTML = "<p>沒有可用的房間</p>";
				        return;
				    }

				    availableRooms.forEach(function (room) {
				    	console.log(room.roomImgPaths);
				    	var roomImgPaths = room.roomImgPaths;
				    	
				        var roomInfo = document.createElement("div");
				        roomInfo.className = "row mb-2";
				        roomInfo.innerHTML = `
				            <div class="image-container d-flex align-items-center justify-content-space-between">
				                <img src="\${roomImgPaths}" class="img-fluid" onclick="openModal('\${room.roomImgPaths}')">

				                <!-- 圖片放大 -->
				                <div id="myModal" class="modal" onclick="closeModal()">
				                    <img src="\${room.roomImgPaths}" id="modalImg" alt="Large Image">
				                </div>

				                <div class="text-container" style="width: 60%; padding: 0 20px">
				                    <div class="d-flex h-20 justify-content-between align-items-center" style="font-weight: bold; color: #180A0A">
				                        <p style="font-size: 24px;">\${room.roomTitle}</p>
				                        <p style="font-size: 18px;">房號: \${room.roomId}</p>
				                        <p style="font-size: 18px;">\${room.roomContext}</p>
				                    </div>
				                    <div style="height: 80%;">
				                        <p>${room.roomContext}</p>
				                        <div class="mt-3 text-center">
				                            <a href="../page5.jsp" class="btn color1 text-light">前往訂房</a>
				                        </div>
				                    </div>
				                </div>
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


<%@ include file="/WEB-INF/views/footer.jsp" %>