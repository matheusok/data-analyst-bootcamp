CREATE TABLE #temp_Employee (
EmployeeID INT,
JobTitle VARCHAR(100),
Salary INT
);

SELECT *
FROM #temp_Employee;

INSERT INTO #temp_Employee VALUES (
1001, 'HR', 450000
);

INSERT INTO #temp_Employee
SELECT *
FROM EmployeeSalary;

CREATE TABLE #temp_Employee2 (
JobTitle VARCHAR(50),
EmployeesPerJob INT,
AvgAge INT,
AvgSalary INT
);

DROP TABLE IF EXISTS #temp_Employee2
CREATE TABLE #temp_Employee2 (
JobTitle VARCHAR(50),
EmployeesPerJob INT,
AvgAge INT,
AvgSalary INT
);

INSERT INTO #temp_Employee2
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM EmployeeDemographics Demo
JOIN EmployeeSalary Sal
ON Demo.EmployeeID = Sal.EmployeeID
GROUP BY JobTitle;

SELECT *
FROM #temp_Employee2;