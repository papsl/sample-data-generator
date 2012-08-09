CREATE DATABASE [DataGenerator]
GO
USE [DataGenerator]
GO
DROP TABLE dbo.Number
GO
CREATE TABLE dbo.Number(Num INT NOT NULL IDENTITY) ;
GO
SET NOCOUNT ON ;
INSERT dbo.Number DEFAULT VALUES ;
    WHILE SCOPE_IDENTITY() < 5000
        INSERT dbo.Number DEFAULT VALUES ;
        
SELECT ABS(Checksum(NewId())) % 60 As RandomNumber From Number