<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ include file="/WEB-INF/views/header.jsp" %>

<section class="bg_main0" style="min-height: 97.6vh; padding-top: 68px;">
	<div class="container m-0 position-absolute top-50 start-50 translate-middle" style="margin: 0 20%;">
	<h3>所有訂單</h3>
		<table class="table table-bordered border-dark border-2">
			<thead>
				<tr>
					<th scope="col-2">訂單編號</th>
					<th scope="col-1">客戶編號</th>
					<th scope="col-1">客戶姓名</th>
					<th scope="col-2">客戶電話</th>
					<th scope="col-1">房間編號</th>
					<th scope="col-2">入住時間</th>
					<th scope="col-2">退房時間</th>
					<th scope="col-1">訂房人數</th>
					<th scope="col-2">備註</th>
					<th scope="col-1">總金額</th>
				</tr>
			</thead>
			
			<tbody>
				<c:forEach var="book" items="${allBooks}" varStatus="loopStatus">
					<tr>
						<th scope="row">${book.bookId}</th>
						<td>${book.userId}</td>
						<td>${book.userName}</td>
						<td>${book.userPhone}</td>
						<td>${book.roomId}</td>
						<td><fmt:formatDate value="${book.checkinDate}" pattern="yyyy-MM-dd" /></td>
						<td><fmt:formatDate value="${book.checkoutDate}" pattern="yyyy-MM-dd" /></td>
						<td>${book.totalGuests}</td>
						<td>${book.specialReq}</td>
						<td>${book.bookPrice}元</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</section>

<%@ include file="/WEB-INF/views/footer.jsp" %>