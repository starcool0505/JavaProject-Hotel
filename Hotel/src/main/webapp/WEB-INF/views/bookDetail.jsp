<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
	    <link rel="stylesheet" href="Hotel/css/main_color.css">
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/pure-min.css" >
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
	  <title>訂單完成</title>
	  
	  <style>
	  	.bi-1-circle-fill {
		    color: darkgrey; 
		}
		
		.book-info th, .user-info th {
		    border-bottom: 1px solid #ddd; 
		}
	  </style>
	  
	</head>
	<body>
	  <%
		  // 獲取從前一個頁面傳遞的參數
		  String name = request.getParameter("name");
		  String phone = request.getParameter("phone");
		  String email = request.getParameter("email");
		  String specialRequests = request.getParameter("special-requests");
	  %>
	  <h2>訂單完成</h2>
	  <div class="container mt-5" style="margin: 0 auto; min-height: 89.3vh;">
	  
	  	<div class="table-container" style="margin: 0 auto">
			<table class="pure-table pure-table-bordered pure-table-striped mb-5" style="width: 60%">
				  <tbody>
				    <tr class="book-info">
				      <th width="30%">住宿期間</th>
				      <td>
						<p>入住日期：2024-01-30 </p>
						<p>退房日期：2024-01-31</p>
					  </td>
				    </tr>
				    <tr class="book-info">
				      <th width="30%">夜數</th>
				      <td>
						<p> 1 晚</p>
					  </td>
				    </tr>
				    <tr class="book-info">
				      <th width="30%">房型</th>
				      <td>
						<p> 綠意雙人房</p>
					  </td>
				    </tr>
				    <tr class="book-info">
				      <th width="30%">小計</th>
				      <td>
						<p>$ 3000 元</p>
					  </td>
				    </tr>
				  </tbody>
			</table>
			<table class="pure-table pure-table-bordered pure-table-striped mt-3 mb-5" style="min-width: 60%">
				  <tbody>
				    <thead><h4>訂房明細</h4></thead>
				    <tr class="user-info">
				      <th width="30%">姓名</th>
				      <td>
						<p><%= name %></p>
					  </td>
				    </tr>
				    <tr class="user-info">
				      <th width="30%">電話</th>
				      <td>
						<p><%= phone %></p>
					  </td>
				    </tr>
				    <tr class="user-info">
				      <th width="30%">Email</th>
				      <td>
						<p>  <%= email %></p>
					  </td>
				    </tr>
				    <tr class="user-info">
				      <th width="30%">特殊要求</th>
				      <td>
						<p><%= specialRequests %></p>
					  </td>
				    </tr>
				  </tbody>
			</table>
		</div>
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