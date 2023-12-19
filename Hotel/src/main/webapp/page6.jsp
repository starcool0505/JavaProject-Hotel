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
	</head>
	<body>
	
	  <h2>訂單完成</h2>
	
	  <div id="order-details">
	    <p>姓名: <span id="name"></span></p>
	    <p>電話: <span id="phone"></span></p>
	    <p>Email: <span id="email"></span></p>
	    <p>特殊要求: <span id="special-requests"></span></p>
	  </div>
	
	  <script>
	    function getParameterByName(name, url) {
	      if (!url) url = window.location.href;
	      name = name.replace(/[\[\]]/g, "\\$&");
	      var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
	          results = regex.exec(url);
	      if (!results) return null;
	      if (!results[2]) return '';
	      return decodeURIComponent(results[2].replace(/\+/g, " "));
	    }
	
	    document.getElementById('name').innerText = getParameterByName('name');
	    document.getElementById('phone').innerText = getParameterByName('phone');
	    document.getElementById('email').innerText = getParameterByName('email');
	    document.getElementById('special-requests').innerText = getParameterByName('special-requests') || '無';
	  </script>
	</body>
</html>



<%@ include file="/WEB-INF/views/footer.jsp" %>