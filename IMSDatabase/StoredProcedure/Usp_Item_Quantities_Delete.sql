CREATE PROCEDURE [dbo].[Usp_Item_Quantities_Delete]
	     @Id INT
		,@ModifiedBy INT = NULL
		,@ModifiedOn DATETIME = NULL
AS
BEGIN	

	UPDATE [dbo].[ItemQuantities]
	SET 
		 [IsDeleted] = 1
	    ,[ModifiedBy] = @ModifiedBy
		,[ModifiedOn] = @ModifiedOn
	WHERE [Id] = @Id

END