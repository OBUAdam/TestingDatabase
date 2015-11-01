USE	Database1

CREATE TABLE ALookUp
(
	ID int PRIMARY KEY
	,Name varchar(500) NOT NULL
	,DateCreated datetime NOT NULL
	,UserCreated varchar(100) NOT NULL
	,DateModified datetime NOT NULL
	,UserModified varchar(100) NOT NULL
)
GO

USE	Database2

CREATE TABLE ALookUp
(
	ID int PRIMARY KEY
	,Name varchar(500) NOT NULL
	,DateCreated datetime NOT NULL
	,UserCreated varchar(100) NOT NULL
	,DateModified datetime NOT NULL
	,UserModified varchar(100) NOT NULL
)
GO