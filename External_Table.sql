CREATE EXTERNAL FILE FORMAT [Synapsetxt] 
WITH (
	FORMAT_TYPE = DELIMITEDTEXT, 
	FORMAT_OPTIONS (
		FIELD_TERMINATOR = N'"', 
		USE_TYPE_DEFAULT = False
	), 
	DATA_COMPRESSION = 'org.apache.hadoop.io.compress.GzipCodec'
)
;


CREATE EXTERNAL DATA SOURCE [Dataquality] WITH 
(	TYPE = HADOOP,
	LOCATION = N'abfss://raw@bkiausetstadls01.dfs.core.windows.net',
	CREDENTIAL = [MSI_Dataquality]
)
;


CREATE EXTERNAL TABLE dbo.ExchangeRates_May
(
[Exchange_Date] date,
[Australia_base_rate] decimal(18,6),
[Newzealand_Exchangerate] decimal(18,6),
[Unitedstates_Exchangerate] decimal(18,6)
)
WITH
(
LOCATION = '/DataWarehouse/ExchangeRates_May.txt',
DATA_SOURCE = Dataquality,
FILE_FORMAT = Synapsetxt
)
;