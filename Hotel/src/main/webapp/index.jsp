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
	        background-color: #afa07f; /* 背景顏色 */
	        color:white;
	        height:70px;
	        display: flex;
	        justify-content: center;
	        align-items: center;
	        padding: 20px; /* 可以添加內邊距來增加文字區域的大小 */
	       
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
	        background-color: #afa07f; /* 背景顏色 */
	        color:white;
	        height:70px;
	        display: flex;
	        justify-content: center;
	        align-items: center;
	        padding: 20px; /* 可以添加內邊距來增加文字區域的大小 */
	       
	    }
	    
		/* -------------------房型預覽--------------------------------- */
		.Roombg{
		background-color: #EBE3D5;;
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
	<div class="center"> <!-- Change .slider to .center -->
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
	<section class="RoomPreviewTitle"  >
	 <div>
		<h2>房型預覽</h2>
	 </div>
	</section>
	<div class=Roombg>
	  <section class="RoomPreview">
		
		
		
		
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