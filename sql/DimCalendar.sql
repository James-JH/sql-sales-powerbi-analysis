-- cleaned DimDate table --
-- removed redundant columns --
-- refreshed column names --
SELECT [DateKey]
      ,[FullDateAlternateKey] AS Date
      --,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] AS Day
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
      --,[DayNumberOfYear]
      ,[WeekNumberOfYear] AS WeekNum
      ,[EnglishMonthName] AS Month
        ,LEFT([EnglishMonthName], 3) AS MonthShort
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      ,[MonthNumberOfYear] AS MonthNo
      ,[CalendarQuarter] AS Quarter
      ,[CalendarYear] AS Year
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM  [AdventureWorksDW2025].[dbo].[DimDate]
  WHERE [CalendarYear] >= 2024 -- only take 2024, 2025, and 2026 data --
