SELECT COUNT(LastName) AS LastNameCount
FROM EmployeeDemographics;

SELECT SUM(Salary) SumSalary, MAX(Salary) MaxSalary, MIN(Salary) MinSalary , AVG(Salary) AverageSalary
FROM EmployeeSalary;