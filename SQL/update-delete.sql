UPDATE EmployeeDemographics
SET EmployeeID = 1012
WHERE FirstName = 'Holly' AND LastName = 'Flax';

UPDATE EmployeeDemographics
SET Age = 33, Gender = 'Female'
WHERE EmployeeID = 1012;

DELETE FROM EmployeeDemographics
WHERE EmployeeID = 1005;