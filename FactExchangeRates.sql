--fact table ddl
CREATE TABLE dbo.wrk_FactExchangeRates
(
	DateKey int not null,
	RangeKey int not null ,

Australia_base_rate decimal(18,6),
Newzealand_Exchangerate decimal(18,6),
Unitedstates_Exchangerate decimal(18,6)
	
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN
)
;