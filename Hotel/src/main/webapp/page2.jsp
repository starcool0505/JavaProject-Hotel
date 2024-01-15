<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/header.jsp"%>

<!DOCTYPE html>
<html>
	<div class="spacer"></div> 
	<body class="bg_main0 vh-100">
		<h2 style="margin: 0 20%">最新消息</h2>
		<section class="news-list" style="margin-top: 20px;">
			<div class="row justify-content-center align-items-center custom-button" onclick="window.location.href='/Hotel/page2_1.jsp?post=0'">
				<div class="col-9 fs-5">
					<p>日期：2023年1月18日</p>
					<p>「富貴圓龍，好運龍來」圓山三大亞太金獎主廚聯手龍年鉅獻,親製無化學添加限量年菜</p>
					<p>即日起早鳥9折 加贈圓山限定「好運龍」時尚保冷袋和圓山調味珍鮮。</p>
				</div>
				<img class="col-3" src="images/pic24.jpg" alt="年菜圖片" class="custom-img">
			</div>
	
			<div class="row justify-content-center align-items-center custom-button" onclick="window.location.href='/Hotel/page2_1.jsp?post=1'">
				<div class="col-9 fs-5">
					<p>日期：2023年12月31日</p>
					<p>「跨年表演•音樂派對」DJ現場音樂表演，為您帶來熱情洋溢的跨年夜，盡情舞動身心。</p>
					<p>在夜空中盡情綻放的煙火秀，為新年的來臨增添絢麗色彩，打造夢幻般的跨年時刻。</p>
				</div>
				<img class="col-3" src="images/pic25.jpg" alt="演唱會圖片" class="custom-img">
			</div>
	
			<div class="row justify-content-center align-items-center custom-button" onclick="window.location.href='/Hotel/page2_1.jsp?post=2'">
				<div class="col-9 fs-5">
					<p>日期：2023年12月25日</p>
					<p>「星光璀璨•聖誕豪華之旅」,聖誕主題自助晚宴等待您與家人來參與</p>
					<p>品嚐來自世界各地的美食佳餚，精選的聖誕甜點，為您帶來美味的節日盛宴。</p>
				</div>
				<img class="col-3" src="images/pic26.jpg" alt="聖誕餐圖片" class="custom-img">
			</div>
	
			<div class="row justify-content-center align-items-center custom-button" onclick="window.location.href='/Hotel/page2_1.jsp?post=3'">
				<div class="col-9 fs-5">
					<p>日期：2023年12月15日</p>
					<p>「冬至搓湯圓•手作湯圓體驗」,與親子一起體驗搓湯圓的樂趣！製作屬於自己的湯圓。</p>
					<p>每位小朋友完成湯圓製作後，將獲得一份小禮物，感謝他們的參與和創意。</p>
				</div>
				<img class="col-3" src="images/pic27.jpg" alt="湯圓圖片">
			</div>
			
			<div class="row justify-content-center align-items-center custom-button" onclick="window.location.href='/Hotel/page2_1.jsp?post=4'">
				<div class="col-9 fs-5">
					<p>日期：2023年11月20日</p>
					<p>「鍛鍊金工•手作體驗」使用鍛打、雕刻等技法，親手製作個性化的金屬飾品，打造獨特風格。</p>
					<p>即日起兩人同行一人半價,歡迎情侶同遊。</p>
				</div>
				<img class="col-3" src="images/pic28.jpg" alt="年菜圖片" class="custom-img">
			</div>
	
			<div class="row justify-content-center align-items-center custom-button" onclick="window.location.href='/Hotel/page2_1.jsp?post=5'">
				<div class="col-9 fs-5">
					<p>日期：2023年11月07日</p>
					<p>「螃蟹產季•饗您味蕾」提供多種獨特口味的螃蟹料理，從清蒸、紅燒到香辣，滿足不同口味的需求。</p>
					<p>即日起早鳥9折,消費滿兩千折兩百。</p>
				</div>
				<img class="col-3" src="images/pic29.jpg" alt="年菜圖片" class="custom-img">
			</div>
		</section>
		<script>
			window.onload = function()
			{
				const breakAfter37 = document.querySelectorAll('.break-after-37');
				breakAfter37.forEach((element) =>
				{
					const text = element.textContent;
					const breakPosition = 37;
					const newText = text.slice(0, breakPosition) + '<br>' + text.slice(breakPosition);
					element.innerHTML = newText;
				});
			};
		</script>
	</body>
</html>


<%@ include file="/WEB-INF/views/footer.jsp"%>