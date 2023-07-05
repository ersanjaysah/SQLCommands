
 --DDL(data defination language CREATE ALTER DROP TRUNCATE RENAME)
 ALTER TABLE DEPARTMENT ADD DeptGroup CHAR;
 ALTER TABLE DEPARTMENT DROP COLUMN DeptGroup;
 TRUNCATE TABLE DEPARTMENT;
 ALTER TABLE FOLDER RENAME COLUMN AccessType TO ControlType;

 -- DML (data manupulation language INSERT, UPDATE, DELETE)
 UPDATE FOLDER SET AccessType='Read' WHERE FolderId=3;
 DELETE FROM FOLDER WHERE EmpId=4;

 -- DCL (data control Language >> used for security purpus GRANT, REVOKE)
 -- TCL (Transition Control Language COMMIT, ROLLBACK, SAVE POINT)

 

 -- SQL Operator Logical ( AND, OR, NOT/!) its result will be bool
 SELECT * FROM FOLDER WHERE FolderId=1 and EmpId=1;
 SELECT * FROM FOLDER WHERE FolderId=1 OR EmpId=1;
 SELECT * FROM FOLDER WHERE FolderId!=1 and EmpId!=1;

 -- Comparision Operator ( ==, >, <, >=, <=, <>/!)
 SELECT * FROM FOLDER WHERE FolderId=1 and EmpId > 1;
 SELECT * FROM FOLDER WHERE FolderId=1 and EmpId < 2;
 SELECT * FROM FOLDER WHERE FolderId=1 and EmpId >= 1;
 SELECT * FROM FOLDER WHERE FolderId=1 and EmpId <= 3;
 SELECT * FROM FOLDER WHERE FolderId=1 and EmpId <> 3;

 -- Special Operator ( BETWEEN, LIKE, IS NULL, IN, DISTINCT)
 SELECT * FROM FOLDER WHERE FolderId BETWEEN 1 and 2;
 SELECT * FROM FOLDER WHERE EmpId LIKE 4;
 SELECT * FROM FOLDER WHERE EmpId IS NULL;
 SELECT * FROM FOLDER WHERE FolderId in (2,3);
 SELECT DISTINCT(FolderId) from FOLDER;

 -- Aggregation Function AVG() COUNT() MIN() MAX() SUM()

 SELECT AVG(DepartmentId) FROM DEPARTMENT;
 SELECT COUNT(*) FROM DEPARTMENT;
 SELECT MIN(DepartmentId) FROM DEPARTMENT;
 SELECT MAX(DepartmentId) FROM DEPARTMENT;
 SELECT SUM(DepartmentId) FROM DEPARTMENT;

 -- WHERE clouse, GROUP BY clouse , HAVING clouse, ORDER BY clouse
 SELECT * FROM FOLDER WHERE FolderId=1;

 SELECT COUNT(FolderId),EmpId
 FROM FOLDER
 GROUP BY EmpId
 ORDER BY EmpId DESC;

 SELECT AVG(FolderId), EmpId FROM FOLDER GROUP BY EmpId;
 SELECT FolderId FROM FOLDER ORDER BY FolderId DESC;

 -- UNION operator 
  
  SELECT CountryId FROM COUNTRY
  UNION                            --it does not give duplicate value
  SELECT CountryId FROM DEPARTMENT;

  SELECT CountryId FROM COUNTRY
  UNION ALL                        -- it also give duplicate value
  SELECT CountryId FROM DEPARTMENT;

  -- SQL joins ( INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL OUTER JOIN, SELF JOIN, CARTESION JOIN )

  -- Inner join : common value will give from both the table 
  SELECT COUNTRY.CountryId, COUNTRY.CountryName, DEPARTMENT.DepartmentId
  FROM COUNTRY
  INNER JOIN
  DEPARTMENT ON COUNTRY.CountryId=DEPARTMENT.CountryId;

  --The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2)
  SELECT COUNTRY.CountryId, COUNTRY.CountryName, DEPARTMENT.DepartmentId
  FROM COUNTRY
  LEFT JOIN
  DEPARTMENT ON COUNTRY.CountryId=DEPARTMENT.CountryId;

  --The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records from the left table (table1).
  SELECT COUNTRY.CountryId, COUNTRY.CountryName, DEPARTMENT.DepartmentId
  FROM COUNTRY
  RIGHT JOIN
  DEPARTMENT ON COUNTRY.CountryId=DEPARTMENT.CountryId;

  --The FULL OUTER JOIN keyword returns all records when there is a match in left (table1) or right (table2) table records.

  SELECT COUNTRY.CountryId, COUNTRY.CountryName, DEPARTMENT.DepartmentId
  FROM COUNTRY
  FULL OUTER JOIN
  DEPARTMENT ON COUNTRY.CountryId=DEPARTMENT.CountryId;



SELECT * FROM COUNTRY;
SELECT * FROM DEPARTMENT;
SELECT * FROM DEPLOYMENT;
SELECT * FROM EMPLOYEE;
SELECT * FROM FOLDER;