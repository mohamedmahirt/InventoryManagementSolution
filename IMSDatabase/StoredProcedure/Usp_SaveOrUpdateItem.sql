CREATE PROCEDURE [dbo].[Usp_SaveOrUpdateItem]

					@Id int = 0,
					@Code VARCHAR(50) = null,
					@Name VARCHAR(100) =null,
					@Status INT = NULL,
					@CreatedBy INT = null,
					@CreatedOn DATETIME= null,
					@ModifiedBy INT= null,
					@ModifiedOn DATETIME= null

AS

BEGIN

	BEGIN TRAN

		IF(@Id = 0)

		BEGIN

			INSERT INTO ItemMaster
		( 
		 [Code]
		,[Name]
		,[Status]
		,[CreatedBy]
		,[CreatedOn]
		,[ModifiedBy]
		,[ModifiedOn]
		,[IsDeleted]
		) VALUES (
		 @Code
		,@Name
		,@Status
		,@CreatedBy
		,@CreatedOn
		,@ModifiedBy
		,@ModifiedOn
		,0
		)

			SET @Id = (SELECT SCOPE_IDENTITY())

		END

		ELSE

		BEGIN

			UPDATE ItemMaster SET 
			[Code]=@Code
		   ,[Name]=@Name
		   ,[ModifiedBy] = @ModifiedBy
		   ,[ModifiedOn] = @ModifiedOn WHERE Id=@Id

		END

		SELECT * FROM ItemMaster WHERE Id = @Id

	COMMIT TRAN

END

