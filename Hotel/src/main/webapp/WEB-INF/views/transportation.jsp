<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/header.jsp" %>

<link rel="stylesheet" href="/Hotel/css/transportation_css.css">

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
    <div class="text mb-3">
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

<%@ include file="/WEB-INF/views/footer.jsp" %>