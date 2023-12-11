CREATE PROCEDURE [dbo].[Usp_Item_Master_Delete]
	     @Id INT
		,@ModifiedBy INT = NULL
		,@ModifiedOn DATETIME = NULL
AS
BEGIN	

	UPDATE [dbo].[ItemMaster]
	SET 
		 [IsDeleted] = 1
	    ,[ModifiedBy] = @ModifiedBy
		,[ModifiedOn] = @ModifiedOn
	WHERE [Id] = @Id

END