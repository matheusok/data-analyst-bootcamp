CREATE PROCEDURE Test AS
SELECT *
FROM EmployeeDemographics;

EXEC Test;

CREATE PROCEDURE Temp_Employee AS
CREATE TABLE #temp_employee (
JobTitle VARCHAR(100),
EmployeePerJob INT,
AvgAge INT,
AvgSalary INT
)

INSERT INTO #temp_employee
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM EmployeeDemographics Demo
JOIN EmployeeSalary Sal
ON Demo.EmployeeID = Sal.EmployeeID
GROUP BY JobTitle

SELECT *
FROM #temp_employee;

EXEC Temp_Employee @JobTitle = 'Salesman';