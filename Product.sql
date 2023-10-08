SELECT [ProductKey]
      ,[ProductAlternateKey] AS ProductCode
     
      ,[EnglishProductName] as ProductName
      
      ,[FinishedGoodsFlag]
      ,[Color]
      ,[SafetyStockLevel]
      ,[ReorderPoint]
  FROM [AdventureWorksDW2019].[dbo].[DimProduct]
