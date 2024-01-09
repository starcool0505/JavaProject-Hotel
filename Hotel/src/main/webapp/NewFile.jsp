<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
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
.image-container {
  position: relative;
  display: inline-block;
}

.overlay {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.5); /* 這裡設定灰色的50%透明度 */
  opacity: 0;
  transition: opacity 0.3s ease; /* 添加漸變效果 */
  display: flex;
  justify-content: center;
  align-items: center;
}

.overlay:hover {
  opacity: 1; /* 滑鼠滑入時改變透明度 */
}

.text {
  color: white;
  font-size: 24px;
  font-weight: bold;
}


	</style>


</head>
<body>
<div class="image-container">
  <img src="images/s-room-1.jpg" alt="你的圖片">
  <div class="overlay">
    <p class="text">View</p>
  </div>
</div>
</body>
</html>