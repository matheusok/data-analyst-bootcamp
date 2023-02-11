SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'Jim';

SELECT *
FROM EmployeeDemographics
WHERE FirstName <> 'Jim';

SELECT *
FROM EmployeeDemographics
WHERE Age >= 30;

SELECT *
FROM EmployeeDemographics
WHERE Age <= 32 AND Gender = 'Male';

SELECT *
FROM EmployeeDemographics
WHERE Age <= 32 OR Gender = 'Male';