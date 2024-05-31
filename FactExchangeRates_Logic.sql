DELETE FROM dbo.wrk_FactExchangeRates;
INSERT INTO dbo.wrk_FactExchangeRates
(
  DateKey 
 ,RangeKey 
 ,Australia_base_rate 
 ,Newzealand_Exchangerate 
)
SELECT
  SourceDate.DateKey 
  ,RangeDim.RangeKey
 ,SourceDate.Australia_base_rate 
 ,SourceDate.Newzealand_Exchangerate
 FROM
(
SELECT 
  DateDim.DateKey 
 ,Australia_base_rate 
 ,Newzealand_Exchangerate 
 ,CASE  WHEN Newzealand_Exchangerate <= 1.087 THEN 'Low'
        WHEN Newzealand_Exchangerate > 1.087 and Newzealand_Exchangerate <=1.095 THEN 'Medium'
        WHEN Newzealand_Exchangerate > 1.095 THEN 'High' ELSE 'High' END AS RangeValue
FROM 
dbo.ExchangeRates_May Source
LEFT JOIN
dbo.wrk_DateDimension DateDim
ON
Source.Exchange_Date = DateDim.DateValue
) SourceDate
LEFT JOIN
dbo.wrk_RangeDimension RangeDim
ON
SourceDate.RangeValue = RangeDim.RangeValue
;
