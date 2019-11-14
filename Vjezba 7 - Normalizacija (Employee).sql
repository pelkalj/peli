/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Emp_ID]
      ,[FirstName] + ' ' + [Surname] AS Name
      ,[DepartmentName]
      ,[Salary]
      ,[CourseTitle]
      ,[DateComplited]
  FROM [Praksa_Nov_2019].[dbo].[Vjezba7EmployeePelka]