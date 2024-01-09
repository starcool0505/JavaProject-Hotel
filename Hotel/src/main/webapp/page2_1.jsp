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
        .spacer {
            height: 100px; /* 調整你想要的間距高度 */
        }

      .activity-info {
		    display: flex;
		    flex-direction: column;
		    align-items: flex-start;
		    margin-top: 20px;
		    max-width: 600px; /* 限制最大寬度 */
		    margin-left: auto; /* 將其置中 */
		    margin-right: auto; /* 將其置中 */
		    padding: 0 20px; /* 可選的內邊距設定 */
		    text-align: center;
		}

        img {
            max-width: 50%;
            height: auto;
            margin-bottom: 20px; /* 圖片下方增加間距 */
            display: block; /* 讓圖片置中 */
            margin-left: auto;
            margin-right: auto;
            margin-top: 0; /* 將圖片上方的 margin 調整為 0 */
        }

        h2 {
            margin: 0; /* 調整 h2 元素的 margin 為 0，消除上下間距 */
            margin-left: 25%; /* 加入 left margin 以對齊 img 的位置 */
            margin-bottom: 10px;/* 在 h2 下方添加一些間距 */
        }

	    .info-item {
	    display: flex;
	    align-items: center;
	    margin-bottom: 10px;
		}
	
		.info-label {
		    background-color: #EBE3D5;
		    padding: 5px;
		}
		
		.info-content {
		    margin-left: 10px;
		    margin-bottom: 0;
		}
		    </style>
		</head>

		<body class="bg_main0 vh-100">
    <div class="spacer"></div>

    <%@ page import="data.Newdata" %>
    <% 
    Integer postId = Integer.parseInt(request.getParameter("post"));
    String[] activityImgPaths = Newdata.ActivityImgPaths;
    String[] activityNames = Newdata.ActivityName;
    String[] activityDates = Newdata.ActivityDate;
    String[] activityDescriptions = Newdata.ActivityDescription;
    
    String sactivityImgPaths = activityImgPaths[postId];
    String sactivityNames = activityNames[postId];
    String sactivityDates = activityDates[postId];
    String sactivityDescriptions = activityDescriptions[postId];

    //for (int i = 0; i < activityNames.length; i++) {
    %>
    <div class="activity-img">
        <h2>活動介紹</h2>
        <img src="<%= sactivityImgPaths %>" alt="活動圖片">
    </div>

    <div class="activity-info">
        <!-- 活動名字 -->
        <div class="info-item">
            <div class="info-label">活動名字:</div>
            <p class="info-content"><%= sactivityNames %></p>
        </div>

        <!-- 活動日期 -->
        <div class="info-item">
            <div class="info-label">活動日期:</div>
            <p class="info-content"><%= sactivityDates %></p>
        </div>

        <!-- 活動內容介紹 -->
        <div class="info-item">
            <div class="info-label">活動內容:</div>
            <p class="info-content"><%= sactivityDescriptions %></p>
        </div>
    </div>
    <% //} %>

   <div class="spacer"></div>
</body>
	</html>
		<%@ include file="/WEB-INF/views/footer.jsp" %>
