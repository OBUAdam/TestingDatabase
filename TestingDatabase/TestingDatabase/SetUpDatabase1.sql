USE Database1
GO

TRUNCATE TABLE dbo.ColumnNameDifferent

INSERT INTO dbo.ColumnNameDifferent(ID, Value, DateCreated, UserCreated, DateModified, UserModified)
SELECT ID = ROW_NUMBER() OVER (ORDER BY NEWID()), Value = NEWID(), DateCreated = GETDATE(), UserCreated = SYSTEM_USER, DateModified = GETDATE(), UserModified = SYSTEM_USER
FROM sys.tables

--SELECT * FROM dbo.ColumnNameDifferent

TRUNCATE TABLE dbo.DataTypeDifferent

INSERT INTO dbo.DataTypeDifferent(ID, Value, DateCreated, UserCreated, DateModified, UserModified)
SELECT ID = ROW_NUMBER() OVER (ORDER BY NEWID()), Value = NEWID(), DateCreated = GETDATE(), UserCreated = SYSTEM_USER, DateModified = GETDATE(), UserModified = SYSTEM_USER
FROM sys.tables

--SELECT * FROM dbo.DataTypeDifferent

TRUNCATE TABLE dbo.IDDifferent

INSERT INTO dbo.IDDifferent(ID, Value, DateCreated, UserCreated, DateModified, UserModified)
SELECT ID = ROW_NUMBER() OVER (ORDER BY NEWID()), Value = NEWID(), DateCreated = GETDATE(), UserCreated = SYSTEM_USER, DateModified = GETDATE(), UserModified = SYSTEM_USER
FROM sys.tables

--SELECT * FROM dbo.IDDifferent

TRUNCATE TABLE dbo.IDNotInt

INSERT INTO dbo.IDNotInt(ID, Value, DateCreated, UserCreated, DateModified, UserModified)
SELECT ID = NEWID(), Value = NEWID(), DateCreated = GETDATE(), UserCreated = SYSTEM_USER, DateModified = GETDATE(), UserModified = SYSTEM_USER
FROM sys.tables

--SELECT * FROM dbo.IDNotInt

TRUNCATE TABLE dbo.IDNotUnique

INSERT INTO dbo.IDNotUnique(ID, Value, DateCreated, UserCreated, DateModified, UserModified)
SELECT ID = 1, Value = NEWID(), DateCreated = GETDATE(), UserCreated = SYSTEM_USER, DateModified = GETDATE(), UserModified = SYSTEM_USER
FROM sys.tables

--SELECT * FROM dbo.IDNotUnique

TRUNCATE TABLE dbo.MissingFromDatabase2

SET IDENTITY_INSERT dbo.MissingFromDatabase2 ON

INSERT INTO dbo.MissingFromDatabase2(ID, Value, DateCreated, UserCreated, DateModified, UserModified)
SELECT ID = ROW_NUMBER() OVER (ORDER BY NEWID()), Value = NEWID(), DateCreated = GETDATE(), UserCreated = SYSTEM_USER, DateModified = GETDATE(), UserModified = SYSTEM_USER
FROM sys.tables

SET IDENTITY_INSERT dbo.MissingFromDatabase2 OFF

--SELECT * FROM dbo.MissingFromDatabase2

TRUNCATE TABLE dbo.NoDifference

INSERT INTO dbo.NoDifference(ID, Value, DateCreated, UserCreated, DateModified, UserModified)
SELECT ID = ROW_NUMBER() OVER (ORDER BY NEWID()), Value = NEWID(), DateCreated = GETDATE(), UserCreated = SYSTEM_USER, DateModified = GETDATE(), UserModified = SYSTEM_USER
FROM sys.tables

--SELECT * FROM dbo.NoDifference

TRUNCATE TABLE dbo.ValueDifferent

INSERT INTO dbo.ValueDifferent(ID, Value, DateCreated, UserCreated, DateModified, UserModified)
SELECT ID = ROW_NUMBER() OVER (ORDER BY NEWID()), Value = NEWID(), DateCreated = GETDATE(), UserCreated = SYSTEM_USER, DateModified = GETDATE(), UserModified = SYSTEM_USER
FROM sys.tables

--SELECT * FROM dbo.ValueDifferent

