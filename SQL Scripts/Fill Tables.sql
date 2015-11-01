USE Database1
INSERT INTO ALookup (ID, Name, DateCreated, UserCreated, DateModified, UserModified)
SELECT 1, 'Item1', '2015/10/31', 'Adam', '2015/10/31', 'Adam' UNION ALL
SELECT 2, 'Item2', '2015/10/31', 'Adam', '2015/10/31', 'Adam' UNION ALL
SELECT 3, 'Item3', '2015/10/31', 'Adam', '2015/10/31', 'Adam' UNION ALL
SELECT 4, 'Item4', '2015/10/31', 'Adam', '2015/10/31', 'Adam' UNION ALL
SELECT 5, 'Item5', '2015/10/31', 'Adam', '2015/10/31', 'Adam'
GO

USE Database2
INSERT INTO ALookup (ID, Name, DateCreated, UserCreated, DateModified, UserModified)
SELECT 1, 'Item1', '2015/10/31', 'Adam', '2015/10/31', 'Adam' UNION ALL
SELECT 2, 'Item2', '2015/10/31', 'Adam', '2015/10/31', 'Adam' UNION ALL
SELECT 3, 'Item3', '2015/10/31', 'Adam', '2015/10/31', 'Adam' UNION ALL
SELECT 4, 'Item4', '2015/10/31', 'Adam', '2015/10/31', 'Adam' UNION ALL
SELECT 5, 'Item5', '2015/10/31', 'Adam', '2015/10/31', 'Adam'
GO