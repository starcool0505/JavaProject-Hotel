
drop table if exists Activity;


-- 建立 newsdata
create table if not exists Activity(
	ActivityId int auto_increment primary key,
    ActivityImgPath varchar(1000),
    ActivityName varchar(50),
    ActivityDate date,
    ActivityDescription TEXT,
   
);

-- 最新消息資料

INSERT INTO Activity (ActivityId , ActivityImgPath , ActivityName ,  ActivityDate, ActivityDescription) VALUES
(1, 'images/pic24.jpg', '「富貴圓龍，好運龍來」', '2023-01-18', '即日起早鳥9折 加贈圓山限定「好運龍」時尚保冷袋和圓山調味珍鮮。'),
(2, 'images/pic25.jpg', '「跨年表演•音樂派對」', '2023-12-31', '在夜空中盡情綻放的煙火秀，為新年的來臨增添絢麗色彩，打造夢幻般的跨年時刻。'),
(3, 'images/pic26.jpg', '「星光璀璨•聖誕豪華之旅」', '2023-12-25', '品嚐來自世界各地的美食佳餚，精選的聖誕甜點，為您帶來美味的節日盛宴。'),
(4, 'images/pic27.jpg', '「冬至搓湯圓•手作湯圓體驗」', '2023-12-15', '每位小朋友完成湯圓製作後，將獲得一份小禮物，感謝他們的參與和創意。'),
(5, 'images/pic28.jpg', '「鍛鍊金工•手作體驗」', '2023-11-20', '即日起兩人同行一人半價,歡迎情侶同遊。'),
(6, 'images/pic29.jpg', '「螃蟹產季•饗您味蕾」', '2023-11-07', '即日起早鳥9折,消費滿兩千折兩百。');


