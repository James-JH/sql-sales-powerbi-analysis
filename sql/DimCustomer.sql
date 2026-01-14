-- clean and ordered dataset --
-- removed redundant columns --
SELECT c.CustomerKey
    --   ,[GeographyKey]
    --   ,[CustomerAlternateKey]
    --   ,[Title]
      ,c.FirstName
    --   ,[MiddleName]
      ,c.LastName
      ,c.FirstName + ' ' + c.LastName AS FullName -- concatenate first and last name as a new column --
    --   ,[NameStyle]
    --   ,[BirthDate]
    --   ,[MaritalStatus]
    --   ,[Suffix]
,CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender -- replace with full gender name --
    --   ,[EmailAddress]
    --   ,[YearlyIncome]
    --   ,[TotalChildren]
    --   ,[NumberChildrenAtHome]
    --   ,[EnglishEducation]
    --   ,[SpanishEducation]
    --   ,[FrenchEducation]
    --   ,[EnglishOccupation]
    --   ,[SpanishOccupation]
    --   ,[FrenchOccupation]
    --   ,[HouseOwnerFlag]
    --   ,[NumberCarsOwned]
    --   ,c.AddressLine1
    --   ,[AddressLine2]
    --   ,[Phone]
      ,c.DateFirstPurchase
    --   ,[CommuteDistance]
        ,g.City AS CustomerCity
  FROM dbo.DimCustomer AS c
  LEFT JOIN dbo.DimGeography AS g on g.GeographyKey = c.GeographyKey -- join CustomerCity column from Geography table --
ORDER BY
    CustomerKey ASC -- order by ascending customer key fashion --