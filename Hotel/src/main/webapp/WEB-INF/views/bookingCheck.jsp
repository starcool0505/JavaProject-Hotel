<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="/WEB-INF/views/header.jsp" %>

<div class="d-flex flex-column justify-content-flex-start align-items-center" style="margin: 0 20%; margin-top: 10vh;">
	<h4><i class="bi bi-exclamation-diamond-fill me-2" style="color: red;"></i>以下為您的訂房資訊，確認無誤後請往下填寫訂購人及信用卡資料</h4>
	<div class="d-flex flex-column align-items-center mb-5">
		<img src="${room.roomImgPaths}" alt="" style="max-width: 60%;">
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
					<td>${room.roomPrice*stayDays}元</td>
				</tr>
		</tbody>
	</table>
	
	<div class="custom-border w-100 d-flex flex-column justify-content-flex-start align-items-center mb-3">
		<form class="row g-3" action="${pageContext.request.contextPath}/mvc/testBook/details" onsubmit="return validateForm()" style="width: 80%;" method="post">
			<h4 class="mt-5">訂購人資料</h4>
			<div class="col-12">
				<label for="bookUserName" class="form-label">訂購人姓名<span class="required-field"></span></label>
				<input type="text" class="form-control border-secondary" id="bookUserName" name="bookUserName" required value="${user.userName}">
			</div>
			<div class="col-12">
				<label for="bookUserPhone" class="form-label">訂購人電話<span class="required-field"></span></label>
				<input type="text" class="form-control border-secondary" id="bookUserPhone" name="bookUserPhone" required value="${userData.userPhone}">
			</div>
			<div class="col-12">
				<label for="bookUserEmail" class="form-label">訂購人Email<span class="required-field"></span></label>
				<input type="text" class="form-control border-secondary" id="bookUserEmail" name="bookUserEmail" required value="${userData.userEmail}">
			</div>
				<div class="col-12">
				<label for="remark" class="form-label">備註</label>
				<input type="text" class="form-control border-secondary" id="remark" name="remark">
			</div>
			
			<h4 class="mt-5">信用卡資料</h4>
			<div class="col-12">
				<label for="inputName" class="form-label">持卡者姓名<span class="required-field"></span></label>
				<input type="text" class="form-control border-secondary" id="inputName" required value="${user.userName}">
				<div id="nameError" class="text-danger"></div>
			</div>
			<div class="col-12">
				<label for="inputCredit" class="form-label">信用卡卡號<span class="required-field"></span></label>
				<input type="text" class="form-control border-secondary" id="inputCredit" required>
				<div id="creditError" class="text-danger"></div>
			</div>
			<div class="col-md-6">
				<label for="expirationDate" class="form-label">有效期限至<span class="required-field"></span></label>
				<input type="text" class="form-control border-secondary" id="expirationDate" placeholder="MM/YY" required>
				<div id="dateError" class="text-danger"></div>
			</div>
			<div class="col-md-6">
				<label for="cvv" class="form-label">CVV<span class="required-field"></span></label>
				<input type="text" class="form-control border-secondary" id="cvv" placeholder="背面末三碼" required>
				<div id="cvvError" class="text-danger"></div>
			</div>
				<div class="col-12">
				<label for="inputAddress" class="form-label">帳單地址<span class="required-field"></span></label>
				<input type="text" class="form-control border-secondary" id="inputAddress" required>
				<div id="addressError" class="text-danger"></div>
			</div>
			<div class="col-12 d-flex justify-content-end" style="min-width: 100%;">
				<button type="submit" class="btn color2 text-light text-nowrap mt-3 mb-3" style="width: auto;">確認付款</button>
			</div>
		</form>
	</div>
</div>

<script>
	function validateForm()
	{
		// 获取输入的值
		var cardName = document.getElementById('inputName').value.trim();
		var cardNumber = document.getElementById('inputCredit').value.trim();
		var expirationDate = document.getElementById('expirationDate').value.trim();
		var cvv = document.getElementById('cvv').value.trim();
	
		// 正则表达式检查信用卡号格式
		var cardNumberRegex = /^\d{4}-\d{4}-\d{4}-\d{4}$/;
		
		// 正则表达式检查日期格式 MM/YY
		var dateRegex = /^(0[1-9]|1[0-2])\/\d{2}$/;
		
		// 正则表达式检查CVV格式
		var cvvRegex = /^\d{3}$/;
	
		// 初始化错误标志
		var hasError = false;
	
		// 检查持卡者姓名
		var nameError = document.getElementById('nameError');
		nameError.innerHTML = "";
		if (cardName === "")
		{
			hasError = true;
			nameError.innerHTML = "請輸入正確姓名";
		}
	
		// 检查信用卡号
		var creditError = document.getElementById('creditError');
		creditError.innerHTML = "";
		if (!cardNumberRegex.test(cardNumber))
		{
			hasError = true;
			creditError.innerHTML = "請輸入正確卡號";
		}
	
		// 检查日期
		var dateError = document.getElementById('dateError');
		dateError.innerHTML = "";
		if (!dateRegex.test(expirationDate))
		{
			hasError = true;
			dateError.innerHTML = "請輸入正確日期";
		}
	
		// 检查CVV
		var cvvError = document.getElementById('cvvError');
		cvvError.innerHTML = "";
		if (!cvvRegex.test(cvv))
		{
			hasError = true;
			cvvError.innerHTML = "請輸入正確CVV";
		}
		
		var bookUserName = document.getElementById('bookUserName').value.trim();
	    var bookUserPhone = document.getElementById('bookUserPhone').value.trim();
	    var bookUserEmail = document.getElementById('bookUserEmail').value.trim();
	    var remark = document.getElementById('remark').value.trim();
		
		// 如果有错误，阻止表单提交
		return !hasError;
	}

	//添加一个事件监听器，当用户输入日期时，自动在输入2位后加上'/'
	document.getElementById('expirationDate').addEventListener('input', function (event)
	{
		var input = event.target;
		if (input.value.length === 2 && input.value.indexOf('/') === -1)
		{
			input.value += '/';
		}
	});

	// 添加一个事件监听器，当用户输入日期时，自动在输入2位后加上'/'
	document.getElementById('inputCredit').addEventListener('input', function (event)
	{
		var input = event.target;
		var currentValue = input.value;
	
		// 移除所有非数字字符
		var numericValue = currentValue.replace(/\D/g, '');
	
		// 判断输入是否是数字
		if (/^\d+$/.test(numericValue))
		{
			// 格式化輸入
			var formattedValue = numericValue.replace(/(\d{4})/g, '$1-');
			
			// 移除可能的多余分隔符
			formattedValue = formattedValue.replace(/-$/, '');
	
			// 如果數字位數超過16，阻止輸入
			if (formattedValue.length > 19)
			{
				input.value = currentValue.slice(0, 19);
			}
			else
			{
				input.value = formattedValue;
			}
		}
		else
		{
			// 如果不是數字，阻止輸入
			input.value = currentValue.slice(0, -1); // 刪除最後輸入的字符
		}
	});
</script>

<%@ include file="/WEB-INF/views/footer.jsp" %>