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
	    <title>XX飯店訂房</title> 
		<style>
		    body {
		      font-family: Arial, sans-serif;
		      margin: 0;
		      padding: 0;
		      background-color: #f4f4f4;
		    }
		
		    .container {
		      max-width: 800px;
		      margin: 50px auto;
		      overflow: hidden;
		      background-color: #fff;
		      border-radius: 8px;
		      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		    }
		
		    .form-container {
		      float: left;
		      width: 50%;
		      padding: 20px;
		      box-sizing: border-box;
		      border-right: 1px solid #ccc;
		    }
		
		
		    .form-container label,
		    .form-container input,
		    .form-container textarea {
		      display: block;
		      margin-bottom: 15px;
		    }
		
		    .form-container textarea {
		      resize: vertical;
		    }
		    
		    .required{
		    	color: red;
		    	margin-left: 5px; 
		    }
		
		    .credit-card-container {
		      float: left;
		      width: 50%;
		      padding: 20px;
		      box-sizing: border-box;
		    }
		
		    .credit-card-container h2 {
		      text-align: center;
		    }
		
		    .credit-card-container label,
		    .credit-card-container input {
		      display: block;
		      margin-bottom: 15px;
		    }
		
		    .clearfix::after {
		      content: "";
		      display: table;
		      clear: both;
		    }
		    
		    .info-container {
			  width: 100%;
			  padding: 20px;
			  box-sizing: border-box;
			  text-align: left;
			  border-top: 1px solid #ccc; /* 新增這行設置上邊框 */
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
	
	  <div class="container">
	  	<div class="form-container">
	    	<h3>訂房資訊</h3>
		  	<form action="#" method="post">
		        <label for="name">姓名<span class="required">*</span></label>
		        <input type="text" id="name" name="name" required>
		
		        <label for="phone">電話<span class="required">*</span></label>
		        <input type="tel" id="phone" name="phone" required>
		
		        <label for="email">Email<span class="required">*</span></label>
		        <input type="email" id="email" name="email" required>
		
		        <label for="special-requests">特殊要求</label>
		        <textarea id="special-requests" name="special-requests"></textarea>
	
	      	</form>
	    </div>
		
		 <div class="credit-card-container">
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
		
		    <div class="clearfix"></div>
		    
		     <div class="info-container">
		      <p>此預訂不能取消，也不可修改。如果 No-Show 無故不來，將收取 1 晚罰金。</p>
		    </div>
		
		    <div id="confirmation-btn">
		      <input type="button" value="送出" onclick="showConfirmation()">
		    </div>
	  	</div>
		
		<script>
		  function showConfirmation() {
		    var isConfirmed = confirm("確認送出?");
		    if (isConfirmed) {
		      var name = document.getElementById("name").value;
		      var phone = document.getElementById("phone").value;
		      var email = document.getElementById("email").value;
		      var specialRequests = document.getElementById("special-requests").value;
		
		      var redirectURL = 'page6.jsp' +
		        '?name=' + encodeURIComponent(name) +
		        '&phone=' + encodeURIComponent(phone) +
		        '&email=' + encodeURIComponent(email) +
		        '&special-requests=' + encodeURIComponent(specialRequests);
		
		      window.location.href = redirectURL;
		    }
		  }
		</script>
	  
	  
	</body>
</html>


<%@ include file="/WEB-INF/views/footer.jsp" %>