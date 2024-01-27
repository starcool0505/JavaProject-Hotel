<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="/WEB-INF/views/header.jsp" %>

<div class="d-flex flex-column justify-content-flex-start align-items-center" style="margin: 0 20%; margin-top: 10vh; height: 87.7vh;">
	<div class="d-flex flex-column align-items-center mb-5">
		<img src="${room.roomImgPaths}" alt="" style="max-width: 80%;">
	</div>
	<table class="table table-bordered border-dark border-2">
		<thead>
			<tr>
				<th scope="col-2">訂單編號</th>
				<th scope="col-1">訂購人姓名</th>
				<th scope="col-1">房號</th>
				<th scope="col-1">房型</th>
				<th scope="col-2">入住時間</th>
				<th scope="col-2">退房時間</th>
				<th scope="col-2">天數</th>
				<th scope="col-2">大人</th>
				<th scope="col-2">小孩</th>
				<th scope="col-2">金額</th>
				<th scope="col-2">付款狀態</th>
			</tr>
		</thead>
		<tbody>
				<tr>
					<td>${bookId}</td>
					<td>${userData.userName}</td>
					<td>${room.roomId}</td>
					<td>${room.roomTitle}</td>
					<td>${checkInDate}</td>
					<td>${checkOutDate}</td>
					<td>${stayDays}</td>
					<td>${adult}人</td>
					<td>${child}人</td>
					<td>${bookPrice}元</td>
					<td>已付款</td>
				</tr>
		</tbody>
	</table>
</div>

<%@ include file="/WEB-INF/views/footer.jsp" %>