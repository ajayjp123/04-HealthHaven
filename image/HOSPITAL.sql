create database hospital;
use hospital;

create table hospital_data(id int primary key, name varchar(30),no_of_rooms int,no_of_oxygen_cylinders int,no_of_ventilators int);

insert into hospital_data values(1,"FORTIS",3,5,6);
insert into hospital_data values(2,"APOLLO",4,3,2);
insert into hospital_data values(3,"SHREYA",5,2,7);
insert into hospital_data values(4,"COLUMBIA ASIA",5,1,7);
insert into hospital_data values(5,"ASTER",2,2,2);

create table FORTIS(room_no int primary key,availability boolean);

insert into FORTIS values(100,true);
insert into FORTIS values(101,true);
insert into FORTIS values(102,false);
insert into FORTIS values(103,false);
insert into FORTIS values(104,true);
insert into FORTIS values(105,false);
insert into FORTIS values(106,true);

create table APOLLO(room_no int primary key,availability boolean);

insert into APOLLO values(200,true);
insert into APOLLO values(201,true);
insert into APOLLO values(202,false);
insert into APOLLO values(203,false);
insert into APOLLO values(204,true);
insert into APOLLO values(205,false);
insert into APOLLO values(206,true);

create table SHREYA(room_no int primary key,availability boolean);

insert into SHREYA values(300,true);
insert into SHREYA values(301,false);
insert into SHREYA values(302,false);
insert into SHREYA values(303,false);
insert into SHREYA values(304,false);
insert into SHREYA values(305,true);
insert into SHREYA values(306,true);

create table COLUMBIA_ASIA(room_no int primary key,availability boolean);

insert into COLUMBIA_ASIA values(400,false);
insert into COLUMBIA_ASIA values(401,false);
insert into COLUMBIA_ASIA values(402,true);
insert into COLUMBIA_ASIA values(403,false);
insert into COLUMBIA_ASIA values(404,false);
insert into COLUMBIA_ASIA values(405,true);
insert into COLUMBIA_ASIA values(406,true);


create table ASTER(room_no int primary key,availability boolean);

insert into ASTER values(500,false);
insert into ASTER values(501,false);
insert into ASTER values(502,true);
insert into ASTER values(503,true);
insert into ASTER values(504,true);
insert into ASTER values(505,true);
insert into ASTER values(506,false);

select * from HOSPITAL_DATA;
select * from FORTIS;
select * from APOLLO;
select * from SHREYA;
select * from COLUMBIA_ASIA;
select * from ASTER;

update HOSPITAL_DATA SET no_of_rooms=4 where id=1;
update HOSPITAL_DATA SET no_of_rooms=4 where id=2;
update HOSPITAL_DATA SET no_of_rooms=3 where id=3;
update HOSPITAL_DATA SET no_of_rooms=3 where id=4;
update HOSPITAL_DATA SET no_of_rooms=4 where id=5;

alter table HOSPITAL_DATA change column no_of_rooms available_rooms int;

select * from HOSPITAL_DATA;


create table INJURY(type varchar(30) primary key,reqd_o2 int,reqd_vent int);

insert into INJURY values("Minor",1,2);
insert into INJURY values("Moderate",2,3);
insert into INJURY values("Severe",3,4);
insert into INJURY values("Life-threatening",4,5);

select * from INJURY;

