SELECT TOP (1000) [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]   
      ,[SalesOrderNumber]
      ,[SalesAmount],
    CONVERT(DATE, [OrderDate]) OrderDate,
	CONVERT(DATE, [DueDate]) DueDate,
	CONVERT(DATE, [ShipDate]) ShipDate,
      [OrderDate],
	DATEDIFF(DAY,[OrderDate],[ShipDate]) as 'OrderToshipDays',
	DATEDIFF(DAY,[OrderDate],[DueDate]) as 'OrderToDueDays'
   
  FROM [AdventureWorksDW2019].[dbo].[FactInternetSales]
  where 
  LEFT (OrderDateKey,4)>= YEAR(GETDATE())
  ORDER BY OrderDateKey ASC

