CREATE TABLE [dbo].NoDifference (
    [ID]           INT UNIQUE    NOT NULL,
    Value          VARCHAR (50)  NOT NULL,
    [DateCreated]  DATETIME      NOT NULL,
    [UserCreated]  VARCHAR (100) NOT NULL,
    [DateModified] DATETIME      NOT NULL,
    [UserModified] VARCHAR (100) NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

