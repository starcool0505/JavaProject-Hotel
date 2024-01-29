<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
	<head>
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
		<div class="container mt-5" style="margin: 0 auto; min-height: 100vh;">
		  <h2 class="mb-3" style="margin-top: 10vh; text-align: center;">訂單完成</h2>
		  	<div class="d-flex flex-column justify-content-center align-items-center" style="margin: 0 auto">
				<table class="pure-table pure-table-bordered pure-table-striped mb-5" style="width: 60%">
					  <tbody>
					    <tr class="book-info">
					      <th width="30%">住宿期間</th>
					      <td>
							<p>入住日期：${ book.checkinDate } </p>
							<p>退房日期：${ book.checkoutDate }</p>
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
							<p> ${ room.roomTitle }</p>
						  </td>
					    </tr>
					    <tr class="book-info">
					      <th width="30%">小計</th>
					      <td>
							<p>$ ${ book.bookPrice } 元</p>
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
							<p>${ book.bookName }</p>
						  </td>
					    </tr>
					    <tr class="user-info">
					      <th width="30%">電話</th>
					      <td>
							<p>${ book.bookPhone }</p>
						  </td>
					    </tr>
					    <tr class="user-info">
					      <th width="30%">Email</th>
					      <td>
							<p>${ book.bookEmail }</p>
						  </td>
					    </tr>
					    <tr class="user-info">
					      <th width="30%">特殊要求</th>
					      <td>
							<p>${ book.specialReq }</p>
						  </td>
					    </tr>
					  </tbody>
				</table>
			</div>
		</div>
	</body>
	
	<script>
	  function formatDate(inputDate) {
	        var date = new Date(inputDate);
	        var year = date.getFullYear();
	        var month = (date.getMonth() + 1).toString().padStart(2, '0');
	        var day = date.getDate().toString().padStart(2, '0');
	        
	        return year + '-' + month + '-' + day;
	    }

	    // 使用方法
	    //var bookCheckinDate = 
	    	
	    //var formatCheckInDate = formatDate(bookCheckinDate);
	   // document.write('<p>入住日期：' + formatCheckInDate + '</p>');
	</script>
	
</html>

<%@ include file="/WEB-INF/views/footer.jsp" %>