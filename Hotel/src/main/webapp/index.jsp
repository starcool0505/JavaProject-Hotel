<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/header.jsp" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
		<link rel="stylesheet" href="./css/main_color.css">
		<link href="https://fonts.googleapis.com/css?family=EB Garamond" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
		<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.0/css/bootstrap.css' />
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.css' />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">

    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.js'></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.js"></script>
	<style>
	/* ------------------首頁圖片------------------------------------ */
		.HomePicture {
	    position: relative;
	    text-align: center;
		}
	/* ------------------welcome to the hotel-------------------------- */
		.centered-text {
		    position: absolute;
		    top: 50%;
		    left: 50%;
		    transform: translate(-50%, -50%);
		    background-color: transparent;
		    padding: 10px;
		}
		
		.centered-text span {
			font-family: 'EB Garamond', sans-serif; /* 使用 Google Fonts 中的  字體 */
		    font-size: 60px;
		    color: #FFFFFF; /* 修改文字顏色 */
		}
		
	    /* ------------------消息預覽標題------------------------------------ */
		.NewsPreviewTitle{
	        background-color: #EBE3D5; /* 背景顏色 */
	        
	        height:70px;
	        display: flex;
	        justify-content: center;
	        align-items: center;
	        padding: 20px; /* 可以添加內邊距來增加文字區域的大小 */
	       
	    }
		.NewsPreviewTitle h2 {
		    font-size: 40px; /* 設定字體大小為24像素，你可以根據需要調整這個數值 */
		    color: #776B5D; /* 可以設定字體顏色 */
		    margin-bottom: 10px; /* 添加底部間距 */
		     
		}
		/* ---------------消息預覽--------------------------------------- */
		
		.NewsPreview {
		  width: 80%; /* 設定房間預覽區塊的寬度 */
		  margin: 0 auto; /* 將其置中 */
		  
		}
		
		.NewsPreview .center div {
		  position: relative;
		}

		.NewsPreview .center .slick-slide div:has(>img)::before {
		  content: 'View';
		  position: absolute;
		  top: 0;
		  left: 0;
		  width: 100%; /* 與圖片寬度相符 */
		  height: 100%; /* 與圖片高度相符 */
		  display: flex;
		  justify-content: center;
		  align-items: center;
		  background-color: rgba(0, 0, 0, 0.5);
		  opacity: 0;
		  transition: opacity 0.3s ease;
		  box-sizing: border-box;
		  padding: 20px; /* 調整方塊內邊距 */
		  color: white;
		  font-size: 20px;
		}
		
		.NewsPreview .center .slick-slide  div:has(>img):hover::before {
		  opacity: 1;
		}
				
		.NewsPreview .center img {
		  max-width: 100%; /* 讓圖片最大寬度為其容器的寬度 */
		  height: auto; /* 保持圖片比例 */
		  display: block; /* 清除預設的間距 */
		  margin: 0 auto 20px; /* 設定底部間距 */
		}
		
		/* 可依需求調整圖片間距 */
		.NewsPreview .center {
		  padding: 20px;
		}
		
		/* 使得當螢幕變小時，圖片不會黏在一起 */
		.NewsPreview .center .slick-slide {
		  margin: 0 10px;
		}
		/* 左箭頭 */
		.slick-prev:before {
		  color: #B0A695;
		}
		
		/* 右箭頭 */
		.slick-next:before {
		 color: #B0A695;
		}
		.Newsbg{
		background-color: #EBE3D5;;
		}
	
		.NewsPreview .center div h5 {
		 text-align: center;
		}
		.NewsPreview .custom-button{
		cursor: pointer; /* 讓滑鼠指針顯示為手形 */
		}
		
	    /* -------------------房型預覽標題----------------------------------- */
		 .RoomPreviewTitle {
	        background-color: #EBE3D5; /* 背景顏色 */
	        color:#776B5D;
	        height:70px;
	        display: flex;
	        justify-content: center;
	        align-items: center;
	        padding: 20px; /* 可以添加內邊距來增加文字區域的大小 */
	       
	    }
	    .RoomPreviewTitle h2 {
		    font-size: 40px; /* 設定字體大小為24像素，你可以根據需要調整這個數值 */
		    color: #776B5D; /* 可以設定字體顏色 */
		    margin-bottom: 10px; /* 添加底部間距 */
		     
		}
	    /* --------------卡空位的空白-------------------------------- */
	     .spacer {
	            height: 50px; /* 間距高度 */
	            background-color: #EBE3D5;
	        }
	    
		/* -------------------房型預覽 雙人房--------------------------------- */
		.Roombg{
		background-color: #EBE3D5;;
		}
		.room-container1 {
	    display: flex;
		}

		.room-container1 img {
		    width: 50%;
		    order: 2; /* 將圖片順序設為 2，以確保在 .writePreview 後顯示 */
		}
		
		.writePreview1 {
		    width: 50%;
		    display: flex;
		    flex-grow: 1;
		    flex-direction: column; /* 將排列方向設為垂直 */
		    align-items: center; /* 在水平方向上置中 */
		    justify-content: center;
		}
		
		.write1 p {
		    text-align: center;
		    line-height: 2;
		}
		
		.write1 h2 {
		    text-align: left;
		}
		
		..write2 {
		    margin-top: auto; /* 讓 .write2 在 .write1 下面並垂直排列 */
		    align-self: center; /* 將 .write2 置於垂直方向的起始位置 */
		}
		
		.write2 p {
		    text-align: center;
		}

		/* -------------------房型四人房--------------------------------- */
		.room-container2 {
	    display: flex;
		}

		.room-container2 img {
		    width: 50%;
		    order: 2; /* 將圖片順序設為 2，以確保在 .writePreview 後顯示 */
		}
		
		.writePreview2 {
		    width: 50%;
		    display: flex;
		    flex-grow: 1;
		    flex-direction: column; /* 將排列方向設為垂直 */
		    align-items: center; /* 在水平方向上置中 */
		    justify-content: center;
		}
		
		.write3 p {
		    text-align: center;
		    line-height: 2;
		}
		
		.write3 h2 {
		    text-align: left;
		}
		
		..write4 {
		    margin-top: auto; /* 讓 .write2 在 .write1 下面並垂直排列 */
		    align-self: center; /* 將 .write2 置於垂直方向的起始位置 */
		}
		
		.write4 p {
		    text-align: center;
		}
	/* ---------------------房間圖片增加灰層效果------------------------------ */
	 	.RoomPreview  div {
		  position: relative;
		}

		.RoomPreview  div:has(>img)::before {
		  content: 'View';
		  position: absolute;
		  top: 0;
		  left: 0;
		  width: 100%; /* 與圖片寬度相符 */
		  height: 100%; /* 與圖片高度相符 */
		  display: flex;
		  justify-content: center;
		  align-items: center;
		  background-color: rgba(0, 0, 0, 0.5);
		  opacity: 0;
		  transition: opacity 0.3s ease;
		  box-sizing: border-box;
		  padding: 20px; /* 調整方塊內邊距 */
		  color: white;
		  font-size: 20px;
		}
		
		.RoomPreview  div:has(>img):hover::before {
		  opacity: 1;
		}
				
		.RoomPreview img {
		  max-width: 100%; /* 讓圖片最大寬度為其容器的寬度 */
		  height: auto; /* 保持圖片比例 */
		  display: block; /* 清除預設的間距 */
		  margin: 0 auto 0px; /* 設定底部間距 */
		}
	 	
	</style>
	
	</head>
	
	<body class="bg_main0 vh-100">
	 <section class="HomePicture">
	        <div>
	            <img src="images/pic1.jpg" class="img-fluid" alt="...">
	            <div class="centered-text">
	                <span>Welcome to the hotel</span>
	            </div>
	        </div>
	    </section>
	
	<section class="NewsPreviewTitle"  >
		<h2>消息預覽</h2>
	</section>
	
	<div class=Newsbg>
	  <section class="NewsPreview">
		<div class="center"> <!-- 引入slick畫面輪播 class取為center 要跟官網的套件同名 不然抓不到-->
	        <div>
	          <div class="custom-button" onclick="window.location.href='/Hotel/page2_1.jsp?post=0'">
	          	<img src="images/pic24.jpg" alt="" >
	          </div>
	          	<h5>富貴圓龍，好運龍來</h5>
	        </div>
	        
	        <div>
	          <div class="custom-button" onclick="window.location.href='/Hotel/page2_1.jsp?post=1'">
	          	<img src="images/pic25.jpg" alt=""> 
	          </div>
	          	<h5>跨年表演•音樂派對</h5>
	        </div>
	        
	        <div>
	          <div class="custom-button" onclick="window.location.href='/Hotel/page2_1.jsp?post=2'">
	          	<img src="images/pic26.jpg" alt=""> 
	          </div>
	          	<h5>聖誕豪華之旅</h5>
	        </div>
	        
	        <div>
	          <div class="custom-button" onclick="window.location.href='/Hotel/page2_1.jsp?post=3'">
	          	<img src="images/pic27.jpg" alt=""> 
	          </div>
	          	<h5>冬至搓湯圓•手作湯圓</h5>
	        </div>
	        
	        <div>
	          <div class="custom-button" onclick="window.location.href='/Hotel/page2_1.jsp?post=4'">
	          	<img src="images/pic28.jpg" alt="">
	          </div>
	          	<h5>鍛鍊金工•手作體驗</h5> 
	        </div>
	        
	         <div>
	          <div class="custom-button" onclick="window.location.href='/Hotel/page2_1.jsp?post=5'">
	          	<img src="images/pic29.jpg" alt="">
	          </div>
	          	<h5>螃蟹產季•饗您味蕾</h5>
	        </div>
	        
	     </div>
	  </section>
	</div>
	<div class="spacer"></div> 
	
	<section class="RoomPreviewTitle"  >
		<div>
		  <h2>房型預覽</h2>
		</div>
	</section>
	
	<div class=Roombg>
	<div class="spacer"></div> 
	  <section class="RoomPreview">
	  
		<div class="room-container1">
	        <div class="writePreview1">
	          <div class="write1" >
	            <h2>雙人房</h2>
	            <p>適合情侶或好友，提供舒適的住宿體驗，讓入住者享有私密和放鬆的空間。</p>
	          </div>
		            <div class="write2">
		                <p>綠意雙人房</p>
		                <p>海景雙人房</p>
		                <p>藍天雙人房</p>
		            </div>
	        </div >
           		<img src="images/s-room-1.jpg" alt="房間圖片">
    	</div>
		
		<div class="room-container2">
		  <div class="writePreview2">
		  	<div class="write3" >
				<h2>四人房</h2>
				<p>適合家庭或一小群好友入住，有更寬敞的客廳空間和附加的娛樂設施。</p>
			</div>
				<div class="write4">
					<p>家庭四人房</p>
					<p>溫馨四人房</p>
					<p>太陽四人房</p>
				</div>
		  </div>
					<img src="images/s-room-5.jpg" alt="房間圖片">
				
		</div>
		
		</section>
		</div>
		 <!-- slick畫面輪播 使用Center Mode -->
	<script>
      $('.center').slick({
        centerMode: true,
        centerPadding: '60px',
        slidesToShow: 3,
        responsive: [
          {
            breakpoint: 768,
            settings: {
              arrows: true,
              centerMode: true,
              centerPadding: '40px',
              slidesToShow: 3
            }
          },
          {
            breakpoint: 480,
            settings: {
              arrows: true,
              centerMode: true,
              centerPadding: '40px',
              slidesToShow: 1
            }
          }
        ]
      });
    </script>
	
	</body>
	
</html>


<%@ include file="/WEB-INF/views/footer.jsp" %>