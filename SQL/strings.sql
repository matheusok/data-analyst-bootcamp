CREATE TABLE EmployeeErrors (
EmployeeID VARCHAR(50),
FirstName VARCHAR(50),
LastName VARCHAR(50)
);

INSERT INTO EmployeeErrors VALUES 
('1001  ', 'Jimbo', 'Halbert'),
('  1002', 'Pamela', 'Beasely'),
('1005', 'TOby', 'Flenderson - Fired');

SELECT *
FROM EmployeeErrors;

-- Using Trim, LTRIM, RTRIM
SELECT EmployeeID, TRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors;

SELECT EmployeeID, RTRIM(EmployeeID) AS IDRTRIM
FROM EmployeeErrors ;

SELECT EmployeeID, LTRIM(EmployeeID) AS IDLTRIM
FROM EmployeeErrors ;

-- Using Replace
Select LastName, REPLACE(LastName, '- Fired', '') AS LastNameFixed
FROM EmployeeErrors;

-- Using Substring
SELECT SUBSTRING(FirstName, 1, 3)
FROM EmployeeErrors;

SELECT err.FirstName, SUBSTRING(err.FirstName,1,3), SUBSTRING(dem.FirstName,1,3)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(dem.FirstName,1,3);

SELECT SUBSTRING(err.FirstName,1,3), SUBSTRING(dem.FirstName,1,3), SUBSTRING(err.LastName,1,3)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(dem.FirstName,1,3)
	AND SUBSTRING(err.LastName,1,3) = SUBSTRING(dem.LastName,1,3);

-- Using UPPER and LOWER
SELECT FirstName, UPPER(FirstName)
FROM EmployeeErrors;

SELECT FirstName, LOWER(FirstName)
FROM EmployeeErrors;