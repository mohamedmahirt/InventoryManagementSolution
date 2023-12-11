CREATE PROCEDURE [dbo].[Usp_Item_Quantities_Insert]
	@Id INT OUTPUT,
	@ItemId INT= null,
    @Quantity INT= null,
    @Price DECIMAL(18, 2)= null,
    @CreatedBy INT= null,
    @CreatedOn DATETIME= null,
    @ModifiedBy INT= null,
    @ModifiedOn DATETIME= null
AS
BEGIN
	INSERT INTO [dbo].[ItemQuantities]
	(
		 [ItemId]
		,[Quantity]
		,[Price]
		,[CreatedBy]
		,[CreatedOn]
		,[ModifiedBy]
		,[ModifiedOn]
		,[IsDeleted]
	)
	VALUES
	(
		 @ItemId
		,@Quantity
		,@Price
		,@CreatedBy
		,@CreatedOn
		,@ModifiedBy
		,@ModifiedOn
		,0
	)

	SELECT @Id = IDENT_CURRENT('ItemQuantities')

END
