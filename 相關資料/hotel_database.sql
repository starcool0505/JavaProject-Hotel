-- 授權資料表
drop table if exists user;
drop table if exists room;
drop table if exists book;
drop table if exists equipment;
drop table if exists room_equipment;

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
    roomType varchar(30),
    defaultRoomPrice double,
    roomPrice double,
    roomPic varchar(1000)
);

-- 建立 book table
create table if not exists book
(
    bookId int auto_increment primary key,
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
    equId int auto_increment primary key,
    equName varchar(30),
    equDetail varchar(1000)
);
-- 設置 AUTO_INCREMENT = 1001
alter table user auto_increment = 1001;

-- 建立 book table
create table if not exists roomEquipment
(
    foreign key (roomId) references user(roomId),
    foreign key (equId) references room(equId)
);