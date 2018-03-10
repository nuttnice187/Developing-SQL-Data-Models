	SELECT
	   CONVERT( date, '2013-01-01' ) DateKey
	  ,[Stock Item Key]
	  ,[Quantity On Hand]
	  ,[Bin Location]
	  ,[Reorder Level]
	  ,[Target Stock Level]
	FROM
	Fact.[Stock Holding]
UNION ALL
	SELECT
	   CONVERT( date, '2013-06-01' ) DateKey
	  ,[Stock Item Key]
	  ,[Quantity On Hand] - [Stock Item Key] as [Quantity On Hand]
	  ,[Bin Location]
	  ,[Reorder Level]
	  ,[Target Stock Level]
	FROM
	Fact.[Stock Holding] t;