USE Database2
GO

TRUNCATE TABLE dbo.ColumnNameDifferent

INSERT INTO dbo.ColumnNameDifferent
SELECT ID, Value, DateCreated = GETDATE(), UserCreated = SYSTEM_USER, DateModified = GETDATE(), UserModified = SYSTEM_USER
FROM Database1.dbo.ColumnNameDifferent

--EXEC sp_RENAME 'dbo.ColumnNameDifferent.[Value]' , '[Description]', 'COLUMN' GO

--SELECT * FROM dbo.ColumnNameDifferent

TRUNCATE TABLE dbo.DataTypeDifferent

ALTER TABLE dbo.DataTypeDifferent
ALTER COLUMN Value INT

INSERT INTO dbo.DataTypeDifferent(ID, Value, DateCreated, UserCreated, DateModified, UserModified)
SELECT ID, Value = ID, DateCreated = GETDATE(), UserCreated = SYSTEM_USER, DateModified = GETDATE(), UserModified = SYSTEM_USER
FROM Database1.dbo.DataTypeDifferent

--SELECT * FROM dbo.DataTypeDifferent

TRUNCATE TABLE dbo.IDDifferent

INSERT INTO dbo.IDDifferent(ID, Value, DateCreated, UserCreated, DateModified, UserModified)
SELECT ID = ID + (SELECT MAX(ID) FROM Database1.dbo.IDDifferent), Value, DateCreated = GETDATE(), UserCreated = SYSTEM_USER, DateModified = GETDATE(), UserModified = SYSTEM_USER
FROM Database1.dbo.IDDifferent

--SELECT * FROM dbo.IDDifferent

TRUNCATE TABLE dbo.IDNotInt

INSERT INTO dbo.IDNotInt(ID, Value, DateCreated, UserCreated, DateModified, UserModified)
SELECT ID, Value, DateCreated = GETDATE(), UserCreated = SYSTEM_USER, DateModified = GETDATE(), UserModified = SYSTEM_USER
FROM Database1.dbo.IDNotInt

--SELECT * FROM dbo.IDNotInt

TRUNCATE TABLE dbo.IDNotUnique

INSERT INTO dbo.IDNotUnique(ID, Value, DateCreated, UserCreated, DateModified, UserModified)
SELECT ID, Value, DateCreated = GETDATE(), UserCreated = SYSTEM_USER, DateModified = GETDATE(), UserModified = SYSTEM_USER
FROM Database1.dbo.IDNotUnique

--SELECT * FROM dbo.IDNotUnique

TRUNCATE TABLE dbo.MissingFromDatabase1

SET IDENTITY_INSERT dbo.MissingFromDatabase1 ON

INSERT INTO dbo.MissingFromDatabase1(ID, Value, DateCreated, UserCreated, DateModified, UserModified)
SELECT ID = ROW_NUMBER() OVER (ORDER BY NEWID()), Value = NEWID(), DateCreated = GETDATE(), UserCreated = SYSTEM_USER, DateModified = GETDATE(), UserModified = SYSTEM_USER
FROM sys.tables

SET IDENTITY_INSERT dbo.MissingFromDatabase1 OFF

--SELECT * FROM dbo.MissingFromDatabase1

TRUNCATE TABLE dbo.NoDifference

INSERT INTO dbo.NoDifference(ID, Value, DateCreated, UserCreated, DateModified, UserModified)
SELECT ID, Value, DateCreated = GETDATE(), UserCreated = SYSTEM_USER, DateModified = GETDATE(), UserModified = SYSTEM_USER
FROM Database1.dbo.NoDifference

--SELECT * FROM dbo.NoDifference

TRUNCATE TABLE dbo.ValueDifferent

INSERT INTO dbo.ValueDifferent(ID, Value, DateCreated, UserCreated, DateModified, UserModified)
SELECT ID, Value = NEWID(), DateCreated = GETDATE(), UserCreated = SYSTEM_USER, DateModified = GETDATE(), UserModified = SYSTEM_USER
FROM Database1.dbo.NoDifference

--SELECT * FROM dbo.ValueDifferent

