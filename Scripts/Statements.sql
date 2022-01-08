/*

Data Defination Language
Data defination language defines(DDL) statements defines data structures. Use these statements to create,alter, or drop data structure in a database.

	• CREATE
	• TRUNCATE
	• DROP
	• ALTER
	• RENAME
	• COLLATIONS
	• DISABLE TRIGGER
	• ENABLE TRIGGER

Data Manipulation Language (DML) 
Data manipulation language affect the information stored in the database. Use these statements to insert,delete,update rows in database.

	• DELETE
	• SELECT
	• UPDATE
	• INSERT
	• BULK INSERT
	• MERGE

*/

------------------------------------------------------------------------------------CREATE STATEMENT

--Create Database
CREATE DATABASE testDB;

--Create Table
CREATE TABLE Persons (
	PersonID INT,
	FirstName varchar(255),
	LastName varchar(255),
	Address varchar(255),
	City varchar(255)
);

--Create Index(allow Duplicate)
CREATE INDEX idx_lastname
ON Persons (LastName)

--Create Index on Multiple Column
CREATE INDEX idx_lastname2
ON Persons (LastName,FirstName)

--Create Unique Index
CREATE UNIQUE INDEX idx_lastname3
ON Persons (LastName)


--Create a view
GO
CREATE VIEW myview
AS
SELECT * FROM Persons;


--Create Stored Procedure
GO
CREATE PROCEDURE myprocedure
AS
SELECT * FROM Persons;


----------------------------------------------------------------------------------TRUNCATE STATEMENT

--to delete all records from table
TRUNCATE TABLE Persons;

-----------------------------------------------------------------------------------DROP STATEMENT

--Drop database
DROP DATABASE testDB;

--Drop table
DROP TABLE Persons;

--drop view
DROP VIEW View_name;

--drop store procedure
DROP PROCEDURE proce_name;

-----------------------------------------------------------------------------------ALTER STATEMENT

CREATE TABLE Student
(Name varchar(10))

CREATE TABLE Marks
(roll_Number INT)


--add a column in existing table using ALTER 
ALTER TABLE Student
ADD marks_obtained int;

ALTER TABLE Student
ADD roll_Number int;

--to modify existing column using ALTER 
ALTER TABLE Student
ALTER COLUMN marks_obtained DECIMAL(5,2);

ALTER TABLE Student
ALTER COLUMN roll_Number int NOT NULL;


--to drop an existing column from the table using ALTER 
ALTER TABLE Student
DROP COLUMN marks_obtained;


--to add primary key constraint using ALTER
ALTER TABLE Student
ADD CONSTRAINT PK_roll_num PRIMARY KEY(roll_Number);

--to drop primary key constraint using ALTER
ALTER TABLE Student
DROP CONSTRAINT PK_roll_Num;


--to add foreign key Constraint using ALTER
ALTER TABLE Marks
ADD CONSTRAINT fk_roll_num FOREIGN KEY(roll_Number)
REFERENCES Student(roll_Number);

--to drop foreign key constraint using ALTER
ALTER TABLE Marks
DROP CONSTRAINT fk_roll_num;


--to add unique key constraint using ALTER
ALTER TABLE Student
ADD CONSTRAINT unique_roll_number UNIQUE (roll_Number);

--to drop unique key constraint using ALTER
ALTER TABLE STUDENT
DROP CONSTRAINT unique_roll_number;

--to add check constraint using ALTER 
ALTER TABLE Student
ADD CONSTRAINT check_constraint CHECK(CONDITION);

--to add default constraint using ALTER
ALTER TABLE Student
ADD DEFAULT 'Chetanya' FOR Name;


-------------------------------------------------------------------------------------------RENAME

--to rename a particular column
EXEC SP_RENAME 'PERSON.FirstName','First_Name','column';


--to rename a database name
EXEC sp_renamedb 'testDB','TESTDATABASE';


--to rename a particular table in a database
EXEC sp_rename 'Persons','PERSON';


-----------------------------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------DELETE

--to delete all records from table
DELETE FROM PERSON;


--to delete existing records from table by condition
DELETE FROM PERSON
WHERE First_Name = 'Ram';


----------------------------------------------------------------------------------------UPDATE

UPDATE PERSON
SET First_Name = 'Ramu'
WHERE PersonID = 1;


----------------------------------------------------------------------------------------INSERT

INSERT INTO PERSON VALUES
(4,'Pawan','Kumar','Army Colony','Pune')

--insert into select
INSERT INTO NEW_TABLE
SELECT * FROM OLD_TABLE;

--select into
SELECT * INTO NEW_TABLE
FROM OLD_TABLE;


--Create a new empty table using another table
SELECT * INTO NEW_TABLE
FROM OLD_TABLE
WHERE 1 = 0;


---------------------------------------------------------------------------------------SELECT

--selecting all records in all columns
SELECT * FROM PERSON;

--selecting distinct records in city column
SELECT DISTINCT CITY FROM PERSON;


---------------------------------------------------------------------------------------BULK INSERT