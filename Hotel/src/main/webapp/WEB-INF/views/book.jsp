<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
	<head>
	<%
		String checkInDate=request.getParameter("checkInDate");
		String checkOutDate=request.getParameter("checkOutDate");
		String adult=request.getParameter("adult");
		String child=request.getParameter("child");
		String guests=request.getParameter("guests");
	%>
		<style>
		    body {
		        font-family: Arial, sans-serif;
		        background-color: #f4f4f4;
		    }
		
		    .roomData-container, .book-container {
			    display: flex;
			    justify-content: space-between;
			    margin: 0 auto; 
		        max-width: 800px;
		        padding: 5% 10%;
		        overflow: hidden;
		        background-color: #fff;
		        border-radius: 8px;
		        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		         align-items: stretch; 
		    }
		    
		    .roomData-container{
		    	margin-top: 10vh;
		    }
		    
		    .pure-table th,
	        .pure-table td {
	            border-bottom: 1px solid #a9a9a9; 
	            wrap: nowrap;
	        }
	        
	        
		    .pure-table p{
		    	margin-bottom: 0;
		    }
		    .book-container{
		    	flex-direction: column;
		    }
		    
		    .form-container{
				display: flex;
				flex-direction: row;
		    }
		    .user-container{
		    	border-right: 1px solid #ccc; 
		    }
		
			.user-container,
		    .card-container {
		        width: 50%;
		        box-sizing: border-box;
		        padding: 20px;
		    }		
		    
		    .user-container input,
	        .card-container input {
	            width: 100%;
	            margin-bottom: 10px;
	            padding: 8px;
	            box-sizing: border-box;
	        }
		
		    .user-container textarea {
		        resize: vertical;
		    }
		    
		    .required{
		    	color: red;
		    	margin-left: 5px; 
		    }
		
		   
		    .card-container label,
		    .card-container input {
		        display: block;
		        margin-bottom: 8px;
		    }
		    
		    .info-container {
			    width: 100%;
			    padding: 20px;
			    box-sizing: border-box;
			    text-align: left;
			    border-top: 1px solid #ccc; 
			    clear: both;
			}
			
			#confirmation-btn {
			    width: 100%;
			    text-align: center;
			    margin-top: 20px;
			    margin-bottom: 20px;
			}
	  	</style>
	</head>
	<body>
		<div class="roomData-container mb-5">
		  	<div style="width: 100%">
				<table class="pure-table pure-table-bordered pure-table-striped" style="min-width: 100%; white-space: nowrap;">
					  <tbody style="vertical-align: middle;">
					    <tr>
					      <th scope="col-3">住宿期間</th>
					      <td scope="col-3">
							<p class="mb-1 checkinDate" id="checkoutDate" style="margin-bottom: 1vh">入住日期：<%=checkInDate %> </p>
							<p class="mb-1 checkinDate" id="checkoutDate">退房日期：<%=checkOutDate %> </p>
						  </td>
					    </tr>
					    <tr>
					      <th scope="col-3">夜數</th>
					      <td scope="col-3">
							<p> ${daysDifference} 晚</p>
						  </td>
					    </tr>
					    <tr>
					      <th scope="col-3">房型</th>
					      <td scope="col-3">
							<p> ${room.roomTitle } </p>
						  </td>
					    </tr>
					    <tr>
					    
					      <th scope="col-3">人數</th>
					      <td scope="col-3">
							<p> 成人：<%=adult %>人 </p>
							<p>${child}</p>
							<script>
							    var childCount = <%= child %>; // 將後端傳遞的兒童人數資料轉換為JavaScript變數
							    if (childCount !== 0) {
							      document.write('<p> 兒童：' + childCount + '人 </p>');
							    }
							</script>
						  </td>
					    </tr>
					    <tr>
					      <th scope="col-3">小計</th>
					      <td scope="col-3">
							<p>$ ${room.roomPrice } 元</p>
						  </td>
					    </tr>
					  </tbody>
				</table>
			</div>
		</div>
		
		<div class="book-container">
			<div class="form-container">
			  	<div class="user-container">
			    	<h3>訂房資訊</h3>
				  	<form action="/book/submit" method="post">
				        <label for="name">姓名<span class="required">*</span></label>
				        <input type="text" id="bookName" name="bookName" value="${userData.userName }"  required>
				
				        <label for="phone">電話<span class="required">*</span></label>
				        <input type="tel" id="bookPhone" name="bookPhone" value="${userData.userPhone }" required>
				
				        <label for="email">Email<span class="required">*</span></label>
				        <input type="email" id="bookEmail" name="bookEmail" value="${userData.userEmail }" required>
				
				        <label for="specialReq">特殊要求</label><br>
				        <textarea id="specialReq" name="specialReq" style="width:100%"></textarea>
			      	</form>
			 	</div>
				
				<div class="card-container">
				     <h3>信用卡資訊</h3>
				     <form action="#" method="post">
				       <label for="card-number">卡號:</label>
				       <input type="text" id="card-number" name="card-number" required>
					
				       <label for="card-holder">持卡人姓名:</label>
				       <input type="text" id="card-holder" name="card-holder" required>
					
				       <label for="expiry-date">有效日期:</label>
				       <input type="text" id="expiry-date" name="expiry-date" placeholder="MM/YY" required>
					
				       <label for="security-code">安全碼:</label>
				       <input type="text" id="security-code" name="security-code" required>
				     </form>
				</div>
			</div>
				
			<div class="info-container">
			   <p>此預訂不能取消，也不可修改。如果 No-Show 無故不來，將收取 1 晚罰金。</p>
			</div>
				
			<div id="confirmation-btn">
			   <input type="submit" value="送出" onclick="showConfirmation()">
			</div>
		</div>
		  	
			
		<script>
		  function showConfirmation() {
		    var isConfirmed = confirm("確認送出?");
		    if (isConfirmed) {
		      var name = document.getElementById("bookName").value;
		      var phone = document.getElementById("bookPhone").value;
		      var email = document.getElementById("bookEmail").value;
		      var specialRequests = document.getElementById("specialReq").value;
		
		      var redirectURL = '/Hotel/mvc/book/bookDetail' +
		        '?bookName=' + encodeURIComponent(name) +
		        '&bookPhone=' + encodeURIComponent(phone) +
		        '&bookEmail=' + encodeURIComponent(email) +
		        '&specialReq=' + encodeURIComponent(specialRequests);
		
		      window.location.href = redirectURL;
		    }
		  }
		</script>
	  
	</body>
</html>

<%@ include file="/WEB-INF/views/footer.jsp" %>