CREATE PROCEDURE [dbo].[Usp_Item_Master_Insert]
	@Id INT OUTPUT,
    @Code VARCHAR(50) = null,
    @Name VARCHAR(100) =null,
	@Status INT = NULL,
    @CreatedBy INT = null,
    @CreatedOn DATETIME= null,
    @ModifiedBy INT= null,
    @ModifiedOn DATETIME= null
AS
BEGIN

	INSERT INTO [dbo].[ItemMaster]
	(
		 [Code]
		,[Name]
		,[Status]
		,[CreatedBy]
		,[CreatedOn]
		,[ModifiedBy]
		,[ModifiedOn]
		,[IsDeleted]
	)
	VALUES
	(
		 @Code
		,@Name
		,@Status
		,@CreatedBy
		,@CreatedOn
		,@ModifiedBy
		,@ModifiedOn
		,0
	)

	SELECT @Id = IDENT_CURRENT('ItemMaster')

END
