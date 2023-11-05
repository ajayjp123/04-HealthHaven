create database hospital;
use hospital;

create table HOSPITAL_DATA1(id int primary key, name varchar(30),no_of_rooms int,no_of_oxygen_cylinders int,no_of_ventilators int);


insert into HOSPITAL_DATA1 values(1,"SHREYA",23,45,47);
insert into HOSPITAL_DATA1 values(2,"ASTER",11,17,30);
insert into HOSPITAL_DATA1 values(3,"APOLLO",19,32,50);
insert into HOSPITAL_DATA1 values(4,"COLUMBIA ASIA",32,33,50);


create table SHREYA(room_no int primary key,availability boolean);

insert into SHREYA values(100,true);
insert into SHREYA values(101,false);
insert into SHREYA values(102,false);
insert into SHREYA values(103,false);
insert into SHREYA values(104,false);
insert into SHREYA values(105,true);
insert into SHREYA values(106,true);


create table ASTER(room_no int primary key,availability boolean);

insert into ASTER values(200,false);
insert into ASTER values(201,false);
insert into ASTER values(202,true);
insert into ASTER values(203,true);
insert into ASTER values(204,true);
insert into ASTER values(205,true);
insert into ASTER values(206,false);


create table APOLLO(room_no int primary key,availability boolean);

insert into APOLLO values(300,true);
insert into APOLLO values(301,true);
insert into APOLLO values(302,false);
insert into APOLLO values(303,false);
insert into APOLLO values(304,true);
insert into APOLLO values(305,false);
insert into APOLLO values(306,true);



create table COLUMBIA_ASIA(room_no int primary key,availability boolean);

insert into COLUMBIA_ASIA values(400,false);
insert into COLUMBIA_ASIA values(401,false);
insert into COLUMBIA_ASIA values(402,true);
insert into COLUMBIA_ASIA values(403,false);
insert into COLUMBIA_ASIA values(404,false);
insert into COLUMBIA_ASIA values(405,true);
insert into COLUMBIA_ASIA values(406,true);



select * from HOSPITAL_DATA1;

select * from SHREYA;
select * from ASTER;
select * from APOLLO;
select * from COLUMBIA_ASIA;












