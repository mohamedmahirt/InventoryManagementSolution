CREATE TABLE [dbo].[ItemMaster]
(
	Id INT NOT NULL IDENTITY primary key,
    Code VARCHAR(50),
    Name VARCHAR(100),
    Status INT,
    CreatedBy INT,
    CreatedOn DATETIME,
    ModifiedBy INT,
    ModifiedOn DATETIME,
    IsDeleted BIT NOT NULL DEFAULT 0
)
