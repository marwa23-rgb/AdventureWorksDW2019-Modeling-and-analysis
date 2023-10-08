SELECT 
       [CustomerKey],
	  CONCAT([FirstName],' ',[LastName]) as Name
      ,[BirthDate],	DATEDIFF(YYYY,[BirthDate],GETDATE()) AS AGE ,  
      [MaritalStatus]
      ,CASE [Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
      ,ROUND([YearlyIncome],0) as YearlyIncome
      ,[DateFirstPurchase],
     
	  g.City as [Customer City] 
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] AS C
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography]  as g
  on g.GeographyKey=C.GeographyKey
