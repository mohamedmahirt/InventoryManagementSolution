CREATE PROCEDURE [dbo].[Usp_Item_Quantities_Update]
	 @Id INT 
    ,@ItemId INT= NULL
    ,@Quantity INT= NULL
    ,@Price DECIMAL(18, 2)= NULL
    ,@ModifiedBy INT= NULL
    ,@ModifiedOn DATETIME= NULL
AS
BEGIN	

	UPDATE [dbo].[ItemQuantities]
	SET 
		 
		 [ItemId]=@ItemId
		,[Quantity]=@Quantity
		,[Price] = @Price
		,[ModifiedBy] = @ModifiedBy
		,[ModifiedOn] = @ModifiedOn
	WHERE [Id] = @Id

END