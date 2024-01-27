<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/header.jsp" %>

<section class="bg_main0" style="min-height: 97.5vh; padding-top: 68px;">
		<div class="w-100 d-flex align-content-center" style="height: 90vh">
		<form class="needs-validation mx-auto d-flex flex-column justify-content-center" method="post" 
		      action="${pageContext.request.contextPath}/mvc/login"
		      style="width:15em; ">
			<h4 class="text-center">登入</h4>
			<!-- 顯示錯誤提示，如果有錯誤信息存在 -->
			<%
				String error=(String)request.getAttribute("error");
				String passwordError=(String)request.getAttribute("passwordError");
				if(error!=null)
				{
			%>
					<div class="alert alert-danger" role="alert">
						<%= error %>
					</div>
			<%
				}
				else if (passwordError != null)
				{
			%>
					<div class="alert alert-danger" role="alert">
						<%= passwordError %>
					</div>
			<%
				}
			%>
			<div>
				<label for="username" class="form-label">帳號</label>
				<input type="text" class="form-control" id="username" name="username" value="" required>
				<div class="invalid-feedback">請輸入帳號</div>
			</div>
			<div>
				<label for="password" class="form-label">密碼</label>
				<input type="password" class="form-control" id="password" name="password" value="" required>
				<div class="invalid-feedback">請輸入密碼</div>
			</div>
			<div class="d-flex justify-content-center mt-3">
				<button class="btn bg_main3 text-light font_c1" type="submit">登入</button>
			</div>
		</form>
	</div>
</section>

<script>
	document.querySelector("form").addEventListener("submit", function(e)
	{
		let url = getActionUrl();
		console.log(url);
		$('form').attr('action',url);
		//e.preventDefault();
	});

	function getActionUrl()
	{
		let loginUrl = '${pageContext.request.contextPath}/mvc/login';
		if(window.sessionStorage.getItem('currentPage') != null)
		{
			loginUrl +='?currentPage='+window.sessionStorage.getItem('currentPage');
			window.sessionStorage.removeItem('currentPage');
		}
		return loginUrl;
	}
</script>

<%@ include file="/WEB-INF/views/footer.jsp" %>