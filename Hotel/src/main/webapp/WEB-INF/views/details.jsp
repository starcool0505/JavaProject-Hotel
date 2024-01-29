<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="/WEB-INF/views/header.jsp" %>

<div class="d-flex flex-column justify-content-flex-start align-items-center" style="margin: 0 20%; margin-top: 10vh; height: 87.7vh;">
	<h4><i class="bi bi-check-circle me-2" style="color: green;"></i>訂購完成</h4>
	<div class="d-flex flex-column align-items-center mb-5">
		<img src="${room.roomImgPaths}" alt="" style="max-width: 80%;">
	</div>
	<table class="table table-bordered border-dark border-2 text-nowrap" style="width: auto;">
		<thead>
			<tr>
				<th >訂單編號</th>
				<th >訂購人姓名</th>
				<th >訂購人電話</th>
				<th >訂購人Email</th>
				<th >房號</th>
				<th >房型</th>
				<th >入住時間</th>
				<th >退房時間</th>
				<th >天數</th>
				<th >大人</th>
				<th >小孩</th>
				<th >金額</th>
				<th >付款狀態</th>
				<th>備註</th>
			</tr>
		</thead>
		<tbody>
				<tr>
					<td>${bookId}</td>
					<td>${bookUserName}</td>
					<td>${bookUserPhone}</td>
					<td>${bookUserEmail}</td>
					<td>${room.roomId}</td>
					<td>${room.roomTitle}</td>
					<td>${checkInDate}</td>
					<td>${checkOutDate}</td>
					<td>${stayDays}</td>
					<td>${adult}人</td>
					<td>${child}人</td>
					<td>${bookPrice}元</td>
					<td>已付款</td>
					<td>${remark}</td>
				</tr>
		</tbody>
	</table>
</div>

<%@ include file="/WEB-INF/views/footer.jsp" %>