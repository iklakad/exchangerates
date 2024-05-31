select count(*) from dbo.ExchangeRates_May;
select * from dbo.ExchangeRates_May;
select 
  min(Newzealand_Exchangerate) as Min_Newzealand_Exchangerate
, max(Newzealand_Exchangerate) as Max_Newzealand_Exchangerate
, avg(Newzealand_Exchangerate)  as Avg_Newzealand_Exchangerate 
from dbo.ExchangeRates_May;