<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/header.jsp" %>

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
        /* CSS 樣式 */
      	.custom-button {
		  border: 1px solid #000; /* 設置邊框 */
		  padding: 20px; /* 設置內邊距 */
		  cursor: pointer; /* 讓滑鼠指針顯示為手形 */
		  	border-left: none;
    		border-right: none;
    		border-top: none;
    		border-bottom: 1px solid #ccc; /* 只保留底部框線 */
    		padding: 8px;
    		text-align: center; /* 靠左對齊 */
    		background-color: #f2f2f2;
    		margin: 0 20%; /* 調整左右間距 */
		}
		.custom-button:hover {
		  background-color: #f0f0f0; /* 滑鼠懸停時的背景色 */
		}
		
		.custom-button p:nth-child(1) {
		  text-align: left; /* 將第一個 <p> 元素文字設為靠左 */
		}
		.custom-button p:nth-child(2) {
		  font-size: 90%; /* 或者你想要的其他比例或像素大小 */
		  text-align:center;
		}
		
    </style>

	</head>
	
	<body class="bg_main0 vh-100">
		<h2 style="margin: 0 20%">最新消息</h2>
		<section class="news-list" style="margin-top: 20px;">
		<div class="custom-button" onclick="window.location.href='https://gnn.gamer.com.tw/detail.php?sn=260917'">
	  <p>日期：2024年1月21日<br>
	  「富貴圓龍，好運龍來」圓山三大亞太金獎主廚聯手龍年鉅獻,親製無化學添加限量年菜</p>
	  <p>即日起早鳥9折,加贈圓山限定「好運龍」時尚保冷袋和圓山調味珍鮮</p>
	</div>
	
	<div class="custom-button" onclick="window.location.href='https://gnn.gamer.com.tw/detail.php?sn=260917'">
	  <p>日期：2023年12月31日<br>
	  「跨年表演•音樂派對」 DJ現場音樂表演，為您帶來熱情洋溢的跨年夜，盡情舞動身心。</p>
	  <p> 在夜空中盡情綻放的煙火秀，為新年的來臨增添絢麗色彩，打造夢幻般的跨年時刻。</p>
	</div>
	
	<div class="custom-button" onclick="window.location.href='https://gnn.gamer.com.tw/detail.php?sn=260987'">
	  <p>日期：2023年12月25日<br>
	  「星光璀璨•聖誕豪華之旅」,聖誕主題自助晚宴等待您與家人來參與</p>
	  <p>品嚐來自世界各地的美食佳餚，精選的聖誕甜點，為您帶來美味的節日盛宴。</p>
	</div>
	
	<div class="custom-button" onclick="window.location.href='https://gnn.gamer.com.tw/detail.php?sn=260917'">
	  <p>日期：2023年12月22日<br>
	  「冬至搓湯圓•手作湯圓體驗」,與親子一起體驗搓湯圓的樂趣！製作屬於自己的湯圓。</p>
	  <p>每位小朋友完成湯圓製作後，將獲得一份小禮物，感謝他們的參與和創意。</p>
	</div>
	<div class="custom-button" onclick="window.location.href='https://gnn.gamer.com.tw/detail.php?sn=260917'">
	  <p>日期：2023年11月20日<br>
	  「鍛鍊金工•手作體驗」使用鍛打、雕刻等技法，親手製作個性化的金屬飾品，打造獨特風格。</p>
	  <p>即日起兩人同行一人半價,歡迎情侶同遊。</p>
	</div>
		
	<div class="custom-button" onclick="window.location.href='https://gnn.gamer.com.tw/detail.php?sn=260917'">
	  <p>日期：2023年11月07日<br>
	  「螃蟹產季•饗您味蕾」提供多種獨特口味的螃蟹料理，從清蒸、紅燒到香辣，滿足不同口味的需求。</p>
	  <p>即日起早鳥9折,消費滿兩千折兩百。</p>
	</div>
	
		</section>
		
		
	</body>
</html>


<%@ include file="/WEB-INF/views/footer.jsp" %>