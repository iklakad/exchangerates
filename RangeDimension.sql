---created ddl statement
CREATE TABLE dbo.wrk_RangeDimension
(
	RangeKey [int] NOT NULL,
	RangeValue Date NOT NULL
)
WITH
(
DISTRIBUTION = ROUND_ROBIN
)
;

---one time inserts
insert into dbo.wrk_RangeDimension values (1, 'High') ;
insert into dbo.wrk_RangeDimension values (2, 'Medium') ;
insert into dbo.wrk_RangeDimension values (3, 'Low') ;
