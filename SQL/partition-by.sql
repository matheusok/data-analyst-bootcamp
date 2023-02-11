SELECT *
FROM EmployeeDemographics;

SELECT *
FROM EmployeeSalary;

SELECT Gender,
COUNT(Gender)
FROM EmployeeDemographics Demo
JOIN EmployeeSalary Sal
ON Demo.EmployeeID = Sal.EmployeeID
GROUP BY Gender;

SELECT FirstName, LastName, Gender,Salary,
COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
FROM EmployeeDemographics Demo
JOIN EmployeeSalary Sal
ON Demo.EmployeeID = Sal.EmployeeID;