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
				<th scope="col-1">房號</th>
				<th scope="col-1">房型</th>
				<th scope="col-2">入住時間</th>
				<th scope="col-2">退房時間</th>
				<th scope="col-2">天數</th>
				<th scope="col-2">大人</th>
				<th scope="col-2">小孩</th>
				<th scope="col-2">金額</th>
			</tr>
		</thead>
		<tbody>
				<tr>
					<td>${room.roomId}</td>
					<td>${room.roomTitle}</td>
					<td>${checkInDate}</td>
					<td>${checkOutDate}</td>
					<td>${stayDays}天</td>
					<td>${adult}位</td>
					<td>${child}位</td>
					<td>${room.defaultRoomPrice*stayDays}元</td>
				</tr>
		</tbody>
	</table>
	<div class="d-flex justify-content-end" style="min-width: 100%;">
		<button type="button" class="btn color2 mb-5 text-light text-nowrap" style="width: auto;" onclick="window.location.href='${pageContext.request.contextPath}/mvc/testBook/pay'">付款<i class="bi bi-arrow-return-right ms-1"></i></button>
	</div>
</div>

<%@ include file="/WEB-INF/views/footer.jsp" %>