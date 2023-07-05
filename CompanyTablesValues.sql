--5. Insert data into tables respecting the foreign key constraints

INSERT INTO COUNTRY VALUES('Germany', 'EUROPE', 'EUR');
INSERT INTO COUNTRY VALUES('London', 'UK', 'GBP');
INSERT INTO COUNTRY VALUES('India', 'ASIA', 'INR');
INSERT INTO COUNTRY VALUES('California', 'USA', 'USD');

INSERT INTO DEPARTMENT VALUES (29, 'R&D', 2);
INSERT INTO DEPARTMENT VALUES (17, 'HR', 1);
INSERT INTO DEPARTMENT VALUES (9, 'Finance', 3);
INSERT INTO DEPARTMENT VALUES (4, 'Product', 4);

INSERT INTO EMPLOYEE VALUES (1, 'Zuckerberg', NULL);
INSERT INTO EMPLOYEE VALUES (3, 'Jobs', 17);
INSERT INTO EMPLOYEE VALUES (2, 'Turing', 9);
INSERT INTO EMPLOYEE VALUES (4, 'Musk', 29);
INSERT INTO EMPLOYEE VALUES (5, 'Tesla', 9);

INSERT INTO FOLDER VALUES(1, 1, 'Read');
INSERT INTO FOLDER VALUES(1, 1, 'Write');
INSERT INTO FOLDER VALUES(1, 4, 'Read');
INSERT INTO FOLDER VALUES(1, 3, 'Read');
INSERT INTO FOLDER VALUES(2, 4, 'Read');
INSERT INTO FOLDER VALUES(2, 5, 'Write');
INSERT INTO FOLDER VALUES(3, null, null);

INSERT INTO DEPLOYMENT(DeploymentId,DeploymentDate) VALUES(4,'2009-12-11');

SELECT * FROM COUNTRY;
SELECT * FROM DEPARTMENT;
SELECT * FROM DEPLOYMENT;
SELECT * FROM EMPLOYEE;
SELECT * FROM FOLDER;