CREATE PROCEDURE [dbo].[Usp_Item_Quantities_GetAll]
	 @Id INT = NULL
    ,@ItemId INT= NULL
    ,@Quantity INT= NULL
    ,@Price DECIMAL(18, 2)= NULL
    ,@CreatedBy INT= NULL
    ,@CreatedOn DATETIME= NULL
    ,@ModifiedBy INT= NULL
    ,@ModifiedOn DATETIME = NULL
AS	
BEGIN

	SELECT 
		 [Id]
		,[ItemId]
        ,[Quantity]
        ,[Price]
		,[CreatedBy]
		,[CreatedOn]
		,[ModifiedBy]
		,[ModifiedOn]
		,[IsDeleted]
	FROM [dbo].[ItemQuantities]
	WHERE [IsDeleted] = 0
	AND (@Id IS NULL OR [Id] = @Id)
	AND (@ItemId IS NULL OR [ItemId] = @ItemId)
    AND (@Quantity IS NULL OR [Quantity] = @Quantity)
	AND (@Price IS NULL OR [Price] = @Price)
	AND (@CreatedBy  IS NULL OR [CreatedBy] = @CreatedBy)
	AND (@CreatedOn IS NULL OR [CreatedOn] <= @CreatedOn)
	AND (@ModifiedBy  IS NULL OR [ModifiedBy] = @ModifiedBy)
	AND (@ModifiedOn IS NULL OR [ModifiedOn] <= @modifiedOn)
	
	ORDER BY [Id] DESC

END