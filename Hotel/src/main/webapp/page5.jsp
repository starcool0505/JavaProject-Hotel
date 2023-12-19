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
	 <style>
        .bg_main0 {
            background-color: #f0f0f0; /* Set the background color as needed */
        }

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .container {
            display: flex;
            justify-content: space-around;
            padding: 20px;
        }

        .form-column {
            flex: 1;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            margin: 10px;
        }
        
        .required{
        	color:red;
        	margin-left: 5px; 
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
        }
        
        textarea{
        	width: 100%;
        }

        button {
            background-color: #4caf50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
	</head>
	<body>
	
	    <div class="container">
	        <div class="form-column">
	            <h2>聯絡資料</h2>
	            <form action="/submit" method="post">
	                <label for="name">姓名<span class="required">*</span></label>
	                
	                <input type="text" id="name" name="name" required>
	
	                <label for="phone">手機<span class="required">*</span></label>
	                <input type="tel" id="phone" name="phone" required>
	
	                <label for="email" >Email<span class="required">*</span></label>
	                <input type="email" id="email" name="email" required>
	
	                <label for="specialRequest">特殊要求：</label>
	                <textarea id="specialRequest" name="specialRequest"></textarea>
	
	
	
	
	            </form>
	        </div>
	
	        <div class="form-column">
	            <form action="/submit" method="post">
	                <label for="creditCardNumber">信用卡卡號：</label>
	                <input type="text" id="creditCardNumber" name="creditCardNumber" required>
	
	                <label for="cardholderName">持卡人姓名：</label>
	                <input type="text" id="cardholderName" name="cardholderName" required>
	
	                <label for="expiryDate">有效日期：</label>
	                <input type="text" id="expiryDate" name="expiryDate" placeholder="MM/YYYY" required>
	
	                <label for="securityCode">安全碼：</label>
	                <input type="text" id="securityCode" name="securityCode" required>
	
	            </form>
	        </div>
	    </div>
	
	</body>
</html>



<%@ include file="/WEB-INF/views/footer.jsp" %>