-- 授權資料表
drop table if exists roomEquipment;
drop table if exists book;
drop table if exists user;
drop table if exists room;
drop table if exists equipment;


-- 建立 user table
create table if not exists user
(
    userId int auto_increment primary key,
    userName varchar(50),
    userPhone varchar(10),
    userPassword varchar(50),
    userType int,
    userEmail varchar(50),
    userBirth date
);
-- 設置 AUTO_INCREMENT = 101
alter table user auto_increment = 101;

-- 建立 room table
create table if not exists room
(
    roomId int primary key,
    roomTitle varchar(30),
    roomType varchar(30),
    roomImgPaths varchar(1000),
    roomContext varchar(1000),
    roomDescribe varchar(1000),
    defaultRoomPrice double,
    roomPrice double
);

-- 建立 book table
create table if not exists book
(
    bookId int auto_increment primary key,
    userId int,
    roomId int,
    foreign key (userId) references user(userId),
    foreign key (roomId) references room(roomId),
    checkinDate date,
    checkoutDate date,
    adultNum int,
    childNum int,
    sepicalReq varchar(2000),
    bookPrice double
);
-- 設置 AUTO_INCREMENT = 2024001
alter table user auto_increment = 2024001;

-- 建立 equipment table
create table if not exists equipment
(
    equId int primary key,
    equName varchar(30),
    equPath varchar(500) default null
);

-- 建立 book table
create table if not exists roomEquipment
(
	roomId int,
    equId int,
    foreign key (roomId) references room(roomId),
    foreign key (equId) references equipment(equId)
);

-- user預設值
insert into user(userId, userName, userPhone, userPassword, userType, userEmail, userBirth)
values(101, "Jett", "0912345678", "valorantJett", 1, "jett@example.com", "1999-01-02");

-- room預設值
insert into room(roomId, roomTitle, roomType, roomImgPaths, roomContext, roomDescribe, defaultRoomPrice, roomPrice)
values(201, "綠意雙人房", "雙人房", "/Hotel/images/s-room-1.jpg", "沉浸在翠綠色調的綠意雙人房，享受寧靜氛圍和陽台上的綠意植物，帶來自然舒適的休息空間。", "沉浸在環境清幽的綠意雙人房中，您將感受到大自然的靜謐。室內以翠綠色調為主，搭配舒適的雙人床，讓您在寧靜中放鬆身心。陽台上種植著各種綠意植物，提供一個愜意的休憩空間，讓您盡情享受大自然的美好。", 2800, 2800*0.9);
insert into room(roomId, roomTitle, roomType, roomImgPaths, roomContext, roomDescribe, defaultRoomPrice, roomPrice)
values(301, "海景雙人房", "雙人房", "/Hotel/images/s-room-2.jpg", "開窗即見蔚藍大海，海景雙人房以浪漫裝潢和私人陽台提供難忘的海灘度假體驗。", "開窗即可迎接壯觀的海景，窗外是潔白的沙灘和蔚藍的大海。房間內部以精心設計的裝潢營造浪漫且舒適的氛圍，配有舒適的雙人床和私人陽台，為您帶來難忘的海灘度假體驗。", 3200, 3200*0.9);
insert into room(roomId, roomTitle, roomType, roomImgPaths, roomContext, roomDescribe, defaultRoomPrice, roomPrice)
values(401, "藍天雙人房", "雙人房", "/Hotel/images/s-room-3.jpg", "藍天雙人房以清新的藍色調設計，透過高窗營造明亮空間，提供放鬆身心的居住感。", "歡迎入住藍天雙人房，這個房型以清新的藍色調為主，為您提供愉悅的住宿體驗。寬敞明亮的空間內設有舒適的雙人床，高窗設計帶來充足的陽光，讓整個房間充滿活力。", 3000, 3000*0.9);
insert into room(roomId, roomTitle, roomType, roomImgPaths, roomContext, roomDescribe, defaultRoomPrice, roomPrice)
values(202, "家庭四人房", "四人房", "/Hotel/images/s-room-4.jpg", "寬敞的家庭四人房適合親子入住，溫馨裝潢和完備的家庭設施為您打造溫馨家庭時光。", "家庭四人房提供充足的空間和舒適的床鋪，適合家庭入住。溫馨的裝潢和家庭設施，讓您在這裡度過美好的家庭時光。", 4500, 4500*0.9);
insert into room(roomId, roomTitle, roomType, roomImgPaths, roomContext, roomDescribe, defaultRoomPrice, roomPrice)
values(302, "溫馨四人房", "四人房", "/Hotel/images/s-room-5.jpg", "溫馨四人房為小型團體或家庭提供愉悅的住宿體驗，舒適床鋪和基本生活設施滿足您的需求。", "溫馨四人房是小型團體或家庭的理想之選。房內的裝潢溫馨，提供輕鬆愉悅的住宿體驗，同時配有基本的生活設施，讓您感受到賓至如歸的溫馨。", 4200, 4200*0.9);
insert into room(roomId, roomTitle, roomType, roomImgPaths, roomContext, roomDescribe, defaultRoomPrice, roomPrice)
values(402, "太陽四人房", "四人房", "/Hotel/images/s-room-6.jpg", "太陽四人房充滿陽光，現代裝潢和寬敞空間為多人入住提供輕鬆愉悅的住宿選擇。", "光線明亮的太陽四人房，是寬敞的住宿選擇，適合多人入住。現代化的裝潢與舒適的床鋪，為您創造出愉快而輕鬆的住宿環境。", 4800, 4800*0.9);

-- book預設值
insert into book(bookId, userId, roomId, checkinDate, checkoutDate, adultNum, childNum, sepicalReq, bookPrice)
values(2024001, 101, 201, "2023-12-27", "2023-12-31", 2, 0, "多一條毛巾", 2800*0.9*2);


-- equipment預設值
insert into equipment(equId, equName, equPath)
values(1001, "雙人床", "images/s_equipment1.png");
insert into equipment(equId, equName, equPath)
values(1002, "單人床", "images/s_equipment2.png");

insert into equipment(equId, equName, equPath)
values(1003, "獨立浴缸", "images/s_equipment3.png");
insert into equipment(equId, equName, equPath)
values(1004, "分離式浴室", "images/s_equipment4.png");

insert into equipment(equId, equName, equPath)
values(1005, "免治馬桶", "images/s_equipment5.png");
insert into equipment(equId, equName, equPath)
values(1006, "浴巾毛巾", "images/s_equipment6.png");
insert into equipment(equId, equName, equPath)
values(1007, "冷氣", "images/s_equipment7.png");
insert into equipment(equId, equName, equPath)
values(1008, "衣櫃", "images/s_equipment8.png");
insert into equipment(equId, equName, equPath)
values(1009, "電子保險櫃", "images/s_equipment9.png");
insert into equipment(equId, equName, equPath)
values(1010, "吹風機", "images/s_equipment10.png");
insert into equipment(equId, equName, equPath)
values(1011, "WI-FI", "images/s_equipment11.png");
insert into equipment(equId, equName, equPath)
values(1012, "液晶電視", "images/s_equipment12.png");
insert into equipment(equId, equName, equPath)
values(1013, "小冰箱", "images/s_equipment13.png");
insert into equipment(equId, equName, equPath)
values(1014, "電熱水壺", "images/s_equipment14.png");
insert into equipment(equId, equName, equPath)
values(1015, "咖啡、茶包", "images/s_equipment15.png");
insert into equipment(equId, equName, equPath)
values(1016, "礦泉水", "images/s_equipment16.png");
insert into equipment(equId, equName, equPath)
values(1017, "室內拖鞋", "images/s_equipment17.png");
insert into equipment(equId, equName, equPath)
values(1018, "電話", "images/s_equipment18.png");
insert into equipment(equId, equName, equPath)
values(1019, "牙膏牙刷", "images/s_equipment19.png");
insert into equipment(equId, equName, equPath)
values(1020, "沐浴用品", "images/s_equipment20.png");

-- roomequipment預設值
INSERT INTO roomEquipment(roomId, equId)
VALUES(201, 1001), (201, 1003),
	  (201, 1005), (201, 1006), (201, 1007), (201, 1008), (201, 1009), (201, 1010);