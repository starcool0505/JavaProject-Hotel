<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/header.jsp"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
		<link rel="stylesheet" href="./css/main_color.css">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
		<style>
			h2
			{
				display: flex;
				justify-content: center;
				align-items: center;
			}
			.slogan
			{
				background-color: #afa07f; /* 背景顏色 */
				color: white;
				height: 150px;
				display: flex;
				justify-content: center;
				align-items: center;
				padding: 20px; /* 可以添加内边距来增加文字区域的大小 */
			}
			.slogan p
			{
				text-align: center;
				line-height: 2;
			}
			/* 圖片 */
			.text-overlay
			{
				position: relative;
				width: 1000%; /* 圖片最大寬度為視窗寬度，如果視窗比圖片寬，則圖片保持原大小 */
				height: auto; /* 讓圖片按比例縮放 */
			}
			.text-overlay .overlay-text
			{
				position: absolute;
				top: 50%;
				left: 50%;
				transform: translate(-50%, -50%);
				background-color: rgba(0, 0, 0, 0.5); /* 背景顏色 */
				color: white; /* 文字顏色 */
				padding: 30px;
				font-size: 16px; /* 調整字體大小 */
				line-height: 2.5; /* 調整行距 */
			}
			.about1
			{
				display: flex;
				background-color: #393939;
			}
			.about1 img
			{
				width: 50%
			}
			.about1_1
			{
				width: 50% background-color:transparent;
				display: flex;
				flex-grow: 1;
				flex-direction: column;
				align-items: center;
				justify-content: center;
				margin-right: 20px;
			}
			.about1_1 p
			{
				text-align: center;
				line-height: 2;
				color: white;
			}
			.about2
			{
				display: flex;
				background-color: #393939;
			}
			.about2 img
			{
				width: 50%
			}
			.about2_1
			{
				width: 50% background-color:transparent;
				display: flex;
				flex-grow: 1;
				flex-direction: column;
				align-items: center;
				justify-content: center;
				margin-right: 20px;
			}
			.about2_1 p
			{
				text-align: center;
				line-height: 2;
				color: white;
			}
			.about3
			{
				display: flex;
				background-color: #EBE3D5;
				justify-content: space-between;
				align-items: center;
				padding: 80px 80px;
			}
			.about3 div
			{
				width: 300px;
				text-align: center;
			}
			.about3 img
			{
				width: 100%;
				border-radius: 10px;
			}
			.about3 h4
			{
				margin-top: 20px;
				margin: 20px o;
				font-weight: bold;
			}
			.about3 p
			{
				font-size: 16px;
			}
		</style>
	</head>
	
	<body class="bg_main0 vh-100">
		<section class="news">
			<div class="text-overlay" style="width: 100%; hight: auto">
				<img alt="" src="images/pic5.jpg" style="width: 100%; hight: auto">
				<div class="overlay-text">
					<p>
						歡迎來到我們的飯店，這裡融合了奢華與舒適，為您提供精緻的住宿體驗。<br>我們致力於營造溫馨且獨特的旅程，讓每位客人都感受到無比的尊榮與舒適。
						<br>我們熬過了疫情艱難的時刻,期待與您再次相會。<br>希望能在您愉快的旅程留下與我們的足跡。
					</p>
				</div>
			</div>
		</section>
	
		<section class="slogan">
			<p>
				我們自豪地提供32間寬敞舒適的客房，每一間融合了現代設計與溫馨氛圍。 <br>在我們飯店，您會發現舒適度和品質不僅僅是承諾，更是我們的驕傲。
				<br>不論您是來度假還是商務出差，我們精心打造的住所將帶給您舒適與便利，讓您留下難忘美好的回憶。
			</p>
		</section>
	
		<section class=about1>
			<img alt="" src="images/pic6.jpg">
			<div class="about1_1">
				<p>
					我們引以為傲的床舖設計， <br>經過精心挑選的高品質床墊讓您一躺上去就能感受到家的溫暖。 <br>我們的枕頭更是為了您的睡眠品質而精心打造，無論您喜歡柔軟還是支撐性的枕頭，
					<br>我們都能滿足您的需求。
				</p>
			</div>
		</section>
	
		<section class=about2>
			<div class="about2_1">
				<p>
					當夜幕低垂，城市的燈火開始閃爍，位於城市中心的高樓大廈，欣賞令人讚嘆的夜景。 <br>我們擁有觀景台或餐廳，讓你盡情欣賞夜晚城市的璀璨燈光，感受它所帶來的浪漫氛圍。
					<br>這種時刻讓人陶醉，也是與摯愛、家人或朋友共度美好時光的絕佳場所。
				</p>
			</div>
			<img alt="" src="images/pic7.jpg">
		</section>
	
		<section class=about3>
			<div>
				<img alt="" src="images/pic8.jpg">
				<h4>全新浴室</h4>
				<p>
					擁有淋浴區以及浴缸<br>讓你洗去一身的疲勞
				</p>
			</div>
			<div>
				<img alt="" src="images/pic9.jpg">
				<h4>早餐自助吧</h4>
				<p>
					西式中式樣樣都有<br>吃飽迎接美好一天
				</p>
			</div>
			<div>
				<img alt="" src="images/pic11.jpg">
				<h4>自助洗衣間</h4>
				<p>
					洗衣烘乾都俱全<br>不用擔心無衣服穿
				</p>
			</div>
		</section>
	</body>
</html>

<%@ include file="/WEB-INF/views/footer.jsp"%>