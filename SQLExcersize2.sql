/*							Difference between SQL Languages
Below is a breakdown of what commands can be used when using SQL querie Language:

DDL-Data Definition Language
-CREATE/
-ALTER/
-DROP/
DDL is used to build/create the DB & all objects inside, this language lets you setup the DB and all
other detail.

DML-Data Maniplation Language
The following are statements
-SELECT/
-INSERT/
-UPDATE/
-DELETE/
The Following are Clauses for the above			Can be used with:
-FROM											DELETE, SELECT, UPDATE
-WHERE											DELETE, SELECT, UPDATE, MATCH
-WITH											DELETE, SELECT, MERGE, SELECT, UPDATE
DML Mainly focuses on Manipulating the data withing a DB meaning that nothing can be created.
With this Language you can only edit,view and delete content.


DCL-Data Control Language
-GRANT
-REVOKE
DCL is used for access controll for users on the DB and allows most of the commands to be set per
user by the type of profile assigned.
*/


--------------------------Examples of each command of DDL, DML DCL----------------------------------
--Below the CREATE command is used to create a DB
CREATE DATABASE [HomeWork]

ON PRIMARY
(NAME= N'HWork',FILENAME=N'C:\New\HomeWork.mdf', SIZE = 3136KB, MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB)
LOG ON
(NAME= N'HWork',FILENAME=N'C:\New\HomeWork.mdf', SIZE = 1024KB, MAXSIZE = 2048GB, FILEGROWTH = 10%)
GO
--Set the DB So that it can be used.
USE [HomeWork]
GO

--Creating a Table.
CREATE TABLE [dbo].[Students](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Student_ID] [int] NOT NULL,
	[First_Name] [varchar](50) NOT NULL,
	[Last_Name] [varchar](50) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	)
	ON [PRIMARY]
--Using the ALTER command to add a Colum.
ALTER TABLE [dbo].[Student]
	ADD [Popularity] [int] NOT NULL
GO

/*--Using the DROP command to drop DB and Table
DROP TABLE [dbo].[Students]

DROP DATABASE [HomeWork]
GO*/
--Using the INSERT Command
INSERT [Students] ([Student_ID], [First_Name], [Last_Name], [DateOfBirth]) 
	VALUES('15', 'Mary', 'Macklen', '1996-09-05')
--Using Select Command
SELECT [ID]
      ,[Student_ID]
      ,[First_Name]
      ,[Last_Name]
      ,[DateOfBirth]
  FROM [HomeWork].[dbo].[Students]

--Using UPDATE Command
UPDATE [Students] SET [Last_Name]='Marks' 
	WHERE [First_Name]='Mary' --WHERE Clause can be used to be specified

--Using DELETE Command
DELETE FROM [Students]
		WHERE ([First_Name] = 'Jack' AND [Last_Name] = 'Marks')

--Using GRANT Command
GRANT sysdba TO username

--Using Revoke Command
Revoke sysdba FROM username
