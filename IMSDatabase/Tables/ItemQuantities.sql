CREATE TABLE [dbo].[ItemQuantities]
(
	Id INT NOT NULL IDENTITY  PRIMARY KEY,
	ItemId INT,
    Quantity INT,
    Price DECIMAL(18, 2),
    CreatedBy INT,
    CreatedOn DATETIME,
    ModifiedBy INT,
    ModifiedOn DATETIME,
    IsDeleted BIT NOT NULL DEFAULT 0
)
