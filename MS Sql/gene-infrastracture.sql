/*
----------------------------------------------------------------------------
-- Object Name:		DataGenerator 
-- Project:			General
-- Business Process:/ 
-- Purpose:			Generate sample data for functional testing
-- Detailed Description:  
-- Database:		DataGenerator
-- Dependent Objects:
-- Called By:		manualy
-- Warning:			Recreated object - all data is lost!
----------------------------------------------------------------------------
*/
IF DB_ID('DataGenerator') IS NULL
	CREATE DATABASE [DataGenerator];
GO
USE [DataGenerator]
GO
IF OBJECT_ID('dbo.Number',N'U') IS NOT NULL
	DROP TABLE dbo.Number;
GO
CREATE TABLE dbo.Number(Num INT NOT NULL IDENTITY);
GO
SET NOCOUNT ON;
INSERT dbo.Number DEFAULT VALUES;
    WHILE SCOPE_IDENTITY() < 5000
        INSERT dbo.Number DEFAULT VALUES;


-- Return sample numbers from 1 to 60
SELECT ABS(Checksum(NewId())) % 60 As RandomNumber From Number;

/*
----------------------------------------------------------------------------
-- Change log:
-- papsl	20120809	Initial version
*/