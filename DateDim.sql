---create ddl
CREATE TABLE dbo.wrk_DateDimension
(
	DateKey [int] NOT NULL,
	DateValue Date NOT NULL
)
WITH
(
DISTRIBUTION = ROUND_ROBIN
)
;
--one time insert staements
insert into dbo.wrk_DateDimension values (1,'2024-04-29') ;
insert into dbo.wrk_DateDimension values (2,'2024-04-30') ;
insert into dbo.wrk_DateDimension values (3,'2024-05-01') ;
insert into dbo.wrk_DateDimension values (4,'2024-05-02') ;
insert into dbo.wrk_DateDimension values (5,'2024-05-03') ;
insert into dbo.wrk_DateDimension values (6,'2024-05-04') ;
insert into dbo.wrk_DateDimension values (7,'2024-05-05') ;
insert into dbo.wrk_DateDimension values (8,'2024-05-06') ;
insert into dbo.wrk_DateDimension values (9,'2024-05-07') ;
insert into dbo.wrk_DateDimension values (10,'2024-05-08');
insert into dbo.wrk_DateDimension values (11,'2024-05-09');
insert into dbo.wrk_DateDimension values (12,'2024-05-10');
insert into dbo.wrk_DateDimension values (13,'2024-05-11');
insert into dbo.wrk_DateDimension values (14,'2024-05-12');
insert into dbo.wrk_DateDimension values (15,'2024-05-13');
insert into dbo.wrk_DateDimension values (16,'2024-05-14');
insert into dbo.wrk_DateDimension values (17,'2024-05-15');
insert into dbo.wrk_DateDimension values (18,'2024-05-16');
insert into dbo.wrk_DateDimension values (19,'2024-05-17');
insert into dbo.wrk_DateDimension values (20,'2024-05-18');
insert into dbo.wrk_DateDimension values (21,'2024-05-19');
insert into dbo.wrk_DateDimension values (22,'2024-05-20');
insert into dbo.wrk_DateDimension values (23,'2024-05-21');
insert into dbo.wrk_DateDimension values (24,'2024-05-22');
insert into dbo.wrk_DateDimension values (25,'2024-05-23');
insert into dbo.wrk_DateDimension values (26,'2024-05-24');
insert into dbo.wrk_DateDimension values (27,'2024-05-25');
insert into dbo.wrk_DateDimension values (28,'2024-05-26');
insert into dbo.wrk_DateDimension values (29,'2024-05-27');
insert into dbo.wrk_DateDimension values (30,'2024-05-28');
insert into dbo.wrk_DateDimension values (31,'2024-05-29');