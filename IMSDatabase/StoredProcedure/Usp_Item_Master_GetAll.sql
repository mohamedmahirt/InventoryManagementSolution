CREATE PROCEDURE [dbo].[Usp_Item_Master_GetAll]
	 @Id INT = NULL
    ,@Code VARCHAR(50) = NULL
    ,@Name VARCHAR(100)= NULL
	,@Status INT = NULL
    ,@CreatedBy INT= NULL
    ,@CreatedOn DATETIME= NULL
    ,@ModifiedBy INT= NULL
    ,@ModifiedOn DATETIME = NULL
AS	
BEGIN

	SELECT 
		 [Id]
		,[Code]
		,[Name]
		,[Status]
		,[CreatedBy]
		,[CreatedOn]
		,[ModifiedBy]
		,[ModifiedOn]
		,[IsDeleted]
	FROM [dbo].[ItemMaster]
	WHERE [IsDeleted] = 0
	AND (@Id IS NULL OR [Id] = @Id)
	AND (@Code IS NULL OR [Code] LIKE @Code)
    AND (@Name IS NULL OR [Name] LIKE @Name)
	AND (@Status IS NULL OR [Status] = @Status)
	AND (@CreatedBy  IS NULL OR [CreatedBy] = @CreatedBy)
	AND (@CreatedOn IS NULL OR [CreatedOn] <= @CreatedOn)
	AND (@ModifiedBy  IS NULL OR [ModifiedBy] = @ModifiedBy)
	AND (@ModifiedOn IS NULL OR [ModifiedOn] <= @modifiedOn)
	
	ORDER BY [Id] DESC

END