
--1. Create 'COUNTRY' table
CREATE TABLE COUNTRY(
CountryId INT IDENTITY PRIMARY KEY, --auto-increment primary key
CountryName VARCHAR(30),
Continent VARCHAR(10),
Currency VARCHAR(3)
);

--2. Create 'DEPARTMENT' table
CREATE TABLE DEPARTMENT(
DepartmentId INT PRIMARY KEY,
DeptName VARCHAR(10),
CountryId INT FOREIGN KEY REFERENCES dbo.COUNTRY(CountryId), --here connecting the CountryId from COUNTRY TABLE with DEPARTMENT TABLE
);                                                           -- with the help of FOREIGN KEY REFERENCES

--3. Create 'EMPLOYEE' table
CREATE TABLE EMPLOYEE(
EmpID INT PRIMARY KEY,
EmpName VARCHAR(20) NOT NULL,
DeptId INT FOREIGN KEY REFERENCES dbo.DEPARTMENT (DepartmentId) NULL 
);

--4. Create 'FOLDER' table
CREATE TABLE FOLDER(
FolderId INT NOT NULL,
EmpId INT REFERENCES EMPLOYEE(EmpId),
AccessType VARCHAR(5) NULL
);

--5. Create 'DEPLOYMENT' table
CREATE TABLE DEPLOYMENT(
DeploymentId INT REFERENCES EMPLOYEE(EmpId),
DeploymentDate DATE NOT NULL,
);


