SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%';

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE '%S%';

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%o%';

SELECT *
FROM EmployeeDemographics
WHERE FirstName IS NOT NULL;

SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Jim', 'Michael', 'Angela');