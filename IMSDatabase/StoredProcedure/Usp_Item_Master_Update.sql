CREATE PROCEDURE [dbo].[Usp_Item_Master_Update]
	 @Id INT 
    ,@Code VARCHAR(50)= NULL
    ,@Name VARCHAR(100)= NULL
	,@Status INT = NULL
    ,@ModifiedBy INT= NULL
    ,@ModifiedOn DATETIME= NULL
AS
BEGIN	

	UPDATE [dbo].[ItemMaster]
	SET 
		 
		 [Code]=@Code
		,[Name]=@Name
		,[ModifiedBy] = @ModifiedBy
		,[ModifiedOn] = @ModifiedOn
	WHERE [Id] = @Id

END