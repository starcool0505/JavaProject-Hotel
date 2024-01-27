<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="/WEB-INF/views/header.jsp" %>

<div class="d-flex flex-column justify-content-flex-start align-items-center" style="margin: 0 20%; margin-top: 10vh; min-height: 100vh;">
	<div>
		<form action="${pageContext.request.contextPath}/mvc/testBook/searchRooms" method="post" style="min-width: 100%;">
			<label for="checkInDate">入住日期：</label>
			<input type="date" id="checkInDate" name="checkInDate" required value="${param.checkInDate}">
	
			<label for="checkOutDate" class="ms-3">退房日期：</label>
			<input type="date" id="checkOutDate" name="checkOutDate" required value="${param.checkOutDate}">
			
		<label for="adult" class="ms-3">大人：</label>
			<select id="adult" name="adult">
				<c:forEach var="i" begin="1" end="4">
					<option value="${i}" ${param.adult == i ? 'selected' : ''}> ${i} 人 </option>
				</c:forEach>
			</select>
			
			<label for="child" class="ms-3">小孩：</label>
			<select id="child" name="child">
				<c:forEach var="i" begin="0" end="4">
					<option value="${i}" ${param.child == i ? 'selected' : ''}> ${i} 人 </option>
				</c:forEach>
			</select>
			
			<input type="submit" value="查詢空房" class="ms-3">
		</form>
	</div>
	
	<div class="row d-flex justify-content-flex-start align-items-center border" style="max-width: 100%;">
		<c:forEach var="room" items="${rooms}" varStatus="loopStatus">
			<div class="col-7 p-3">
				<img src="${room.roomImgPaths}" alt="Image${room.roomId}" class="img-fluid">
			</div>
			<div class="col-5">
				<h2 class="font-weight-bold">${room.roomTitle}</h2>
				<p class="fs-5">房號：${room.roomId}</p>
				<p>${room.roomContext}</p>
				<a href="#" onclick="validateAndRedirect(${room.roomId});" class="btn color1 text-light">前往訂房</a>
			</div>
		</c:forEach>
		<c:if test="${empty rooms}">
			<h2 class="m-5 text-danger fw-bold">查無空房</h2>
		</c:if>
	</div>
	<c:if test="${not empty error}">
    <div class="alert alert-danger">
        ${error}
    </div>
</c:if>
</div>

<script>
	// 获取入住日期和退房日期的元素
	var checkInDateInput = document.getElementById('checkInDate');
	var checkOutDateInput = document.getElementById('checkOutDate');
	var adultInput = document.getElementById('adult');
	var childInput = document.getElementById('child');

	// 设置入住日期最小值为今天
	var today = new Date().toISOString().split('T')[0];
	checkInDateInput.setAttribute('min', today);

	// 当入住日期改变时，更新退房日期的最小值为入住日期
	checkInDateInput.addEventListener('input', function () {
	checkOutDateInput.setAttribute('min', checkInDateInput.value);

	// 自动将退房日期设置为入住日期的后一天
	var nextDay = new Date(checkInDateInput.value);
	nextDay.setDate(nextDay.getDate() + 1);
	checkOutDateInput.value = nextDay.toISOString().split('T')[0];
	});

	// 保留原先选取的值
	var selectedCheckInDate = "${param.checkInDate}";
	var selectedCheckOutDate = "${param.checkOutDate}";
	var selectedAdult = "${param.adult}";
	var selectedChild = "${param.child}";
	
	// 空值檢查並設置預設值
	selectedAdult = (selectedAdult !== null) ? selectedAdult : "1";
	selectedChild = (selectedChild !== null) ? selectedChild : "0";

	// 设置表单的值为原先选取的值
	checkInDateInput.value = selectedCheckInDate;
	checkOutDateInput.value = selectedCheckOutDate;
	adultInput.value = selectedAdult;
	childInput.value = selectedChild;
	
	function validateAndRedirect(roomId)
	{
		// 获取入住日期和退房日期的元素
		var checkInDateInput = document.getElementById('checkInDate');
		var checkOutDateInput = document.getElementById('checkOutDate');

		// 检查入住日期和退房日期是否已选择
		if (!checkInDateInput.value || !checkOutDateInput.value)
		{
			alert("請選擇入住日期和退房日期");
			return;
		}

		// 如果日期已选择，执行页面跳转
		var redirectUrl = "${pageContext.request.contextPath}/mvc/testBook/bookingCheck?roomId=" + roomId;
		window.location.href = redirectUrl;
	}
</script>

<%@ include file="/WEB-INF/views/footer.jsp" %>