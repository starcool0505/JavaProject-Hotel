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
	    <script async src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDrwdSb-WZgrv3mLogWyURlXDiDXaKPFVI&callback=console.debug&libraries=maps,marker&v=beta"></script>
	 <style>
        .bg_main0 {
            background-color: #f0f0f0; /* Set the background color as needed */
        }

        .content-container {
            margin: 0 10%;
            display: flex;
            height: 600px;
            margin-bottom: 10%;
            margin-top: 0;
            padding: 5%;
            background-color: #EEEEDF;
        }

        .right-sidebar {
            flex: 1;
            min-width: 40%;
            padding: 20px;
            margin-left: 10%;
            border-left: 2px solid #ccc; /* 添加右邊框 */
            align-items: center; /* 讓子元素在垂直方向上居中對齊 */
        }

        .map-container {
            flex: 4;
            margin-top: 0;
            max-width: 80%; 
            max-height: 100%; 
            display: flex;
        }
        
        .contactInfo {
		    text-align: center; /* 新增：讓內容置中 */
		}
        
		.contactInfoList {
			display: flex;
			flex-direction: row; 
			padding-left: 15%;
			list-style-type: none; 
			justify-content: center;
			margin: 0;
		}
		
		.contactInfoItem {
			margin-right: 10%;
			text-align: center;
		}
	    
        .contactInfoIcon img {
            width: 40px;
            height: 40px;
        }
        
        .text{
        	padding: 0 10%;
        }

    </style>
</head>
	<body class="bg_main0 mt-5">
	    <div class="mt-5 mb-0 d-flex justify-content-center pt-2">
	    	<div class="mt-2 mb-0 d-flex flex-column align-items-center">
	        <h3 class="mt-3 mb-0">Traffic Information </h3>
	        <p class="mt-1 text-align-center" style="font-size: 20px">交通資訊</p></div>
	    </div>
	    
	    <div class="content-container">
	        <div class="map-container">
	            <gmp-map center="25.05818748474121,121.54263305664062" zoom="16" map-id="DEMO_MAP_ID">
	                <gmp-advanced-marker position="25.05818748474121,121.54263305664062" title="Hotel">
	                </gmp-advanced-marker>
	            </gmp-map>
	        </div>
	       <div class="right-sidebar"> 
	       <div class="contactInfo">
		       <ul class="contactInfoList">
		       		<li class="contactInfoItem">
		       			<div class="contactInfoIcon text-nowrap">
		       				<img src="/Hotel/images/telephone.png">
		       				<p class="mt-2 mb-1">TEL:</p>
		                    <p>+886-3-2251234</p>
		       			</div>
		       		</li>
		       		<li class="contactInfoItem">
		       			<div class="contactInfoIcon">
		       				<img src="/Hotel/images/email.png">
		       				<p class="mt-2 mb-1">Email:</p>
		                    <p>abcde123@gmail.com</p>
		       			</div>
		       		</li>
		       	</ul>
	            <ul class="contactInfoList">  
	            	<li class="contactInfoItem">
		       			<div class="contactInfoIcon text-nowrap">
		       				<img src="/Hotel/images/location.png">
		       				<p class="mt-2 mb-1">ADDRESS:</p>
		                    <p>台北市中山區民生東路三段67號</p>
		       			</div>
		       		</li>
	            </ul>
	            </div>
	        </div>
	    </div>
	    <div class="text">
	    	自行開車 <br>
			行駛國道五號→下頭城交流道後右轉→直行青雲路→經過蘭陽博物館→港口路右轉→烏石港路左轉→進入連大烏石港度假村→左手邊黑色建築物就是OA Hotel。
	    	<br>
	    	<br>
	    	鐵路<br>
			搭乘台鐵於外澳火車站下車，步行約20分鐘即可抵達。
	    	<br>
	    	<br>
	    	客運<br>
			於南港轉運站／圓山轉運站搭乘國光客運1877至烏石港站，步行約５分鐘即可抵達。
	    </div>
	</body>
</html>


<%@ include file="/WEB-INF/views/footer.jsp" %>