---Date & time
/*
	time
	date
	smalldatetime
	datetime
	datetime2
	datetimeoffset

*/

--CONVERTING DATE TO OTHER DATE AND TIME TYPES

	--Make it from documentation--
	--https://docs.microsoft.com/en-us/sql/t-sql/data-types/date-and-time-types?view=sql-server-ver15

--CONVERTING STRING LITERALS TO DATE

  SELECT CAST('2022-01-08 12:00:02.210' AS DATE)
  SELECT CAST('2022-01-08 12:00:02.210' AS TIME)
  SELECT CAST('2022-01-08 12:00:02.210' AS smalldatetime)
  SELECT CAST('2022-01-08 12:00:02.210' AS DATETIME)
  SELECT CAST('2022-01-08 12:00:02.210' AS DATETIME2)
  SELECT CAST('2022-01-08 12:00:02.210' AS datetimeoffset)



 





