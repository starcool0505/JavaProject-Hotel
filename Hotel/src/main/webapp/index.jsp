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
	
		.HomePicture {
	    position: relative;
	    text-align: center;
		}
	
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
		
		/* ------------------------------------------------------ */
		 .RoomPreviewTitle {
	        background-color: #afa07f; /* 背景顏色 */
	        color:white;
	        height:70px;
	        display: flex;
	        justify-content: center;
	        align-items: center;
	        padding: 20px; /* 可以添加內邊距來增加文字區域的大小 */
	       
	    }
	    /* ------------------------------------------------------ */
		.NewsPreviewTitle{
	        background-color: #afa07f; /* 背景顏色 */
	        color:white;
	        height:70px;
	        display: flex;
	        justify-content: center;
	        align-items: center;
	        padding: 20px; /* 可以添加內邊距來增加文字區域的大小 */
	       
	    }
	    /* ------------------------------------------------------ */
    	.RoomPreview {
		  width: 90%; /* 設定房間預覽區塊的寬度 */
		  margin: 0 auto; /* 將其置中 */
		  
		  
		}
		
		.RoomPreview .center div {
		  text-align: center; /* 文字置中 */
		}
		
		.RoomPreview .center img {
		  max-width: 100%; /* 讓圖片最大寬度為其容器的寬度 */
		  height: auto; /* 保持圖片比例 */
		  display: block; /* 清除預設的間距 */
		  margin: 0 auto 20px; /* 設定底部間距 */
		}
		
		/* 可依需求調整圖片間距 */
		.RoomPreview .center {
		  padding: 20px;
		}
		
		/* 使得當螢幕變小時，圖片不會黏在一起 */
		.RoomPreview .center .slick-slide {
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
		.Roombg{
		background-color: #EBE3D5;;
		}
		/* ------------------------------------------------------ */
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
	<h3>消息預覽</h3>
	
	</section>
	<div class=Newsbg>
	<section class="NewsPreview">
	<div class="center"> <!-- Change .slider to .center -->
        <div>
          <div>
          	<img src="images/s-room-1.jpg" alt="">
          </div>
          <h3>1</h3>
        </div>
        <div>
          <div><img src="images/s-room-2.jpg" alt=""> </div>
          <h3>2</h3>
        </div>
        <div>
          <div> <img src="images/s-room-3.jpg" alt=""> </div>
          <h3>3</h3>
        </div>
        <div>
          <div><img src="images/s-room-4.jpg" alt=""> </div>
          <h3>4</h3>
        </div>
        <div>
          <div><img src="images/s-room-5.jpg" alt=""></div>
          <h3>5</h3> 
        </div>
         <div>
          <div><img src="images/s-room-6.jpg" alt=""> </div>
          <h3>6</h3>
        </div>
      </div>
		</section>
	</div>
	<section class="RoomPreviewTitle"  >
	<div>
	<h3>房型預覽</h3>
	</div>
	<!--
	<div>
	<p>兩種房型，不論是情侶，或者是家庭，都能安心休息</p>
	</div>
	-->
	</section>
	<div class=Roombg>
<section class="RoomPreview">
	<div class="center"> <!-- Change .slider to .center -->
        <div>
          <h3>1</h3>
          <img src="images/s-room-1.jpg" alt="">
        </div>
        <div>
          <h3>2</h3>
          <img src="images/s-room-2.jpg" alt=""> 
        </div>
         <div>
          <h3>3</h3>
          <img src="images/s-room-3.jpg" alt=""> 
        </div>
         <div>
          <h3>4</h3>
          <img src="images/s-room-4.jpg" alt=""> 
        </div>
          <div>
          <h3>5</h3>
          <img src="images/s-room-5.jpg" alt=""> 
        </div>
          <div>
          <h3>6</h3>
          <img src="images/s-room-6.jpg" alt=""> 
        </div>
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