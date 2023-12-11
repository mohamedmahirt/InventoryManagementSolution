CREATE PROCEDURE [dbo].[Usp_Item_Master_GetById]
   @Id  INT
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
	WHERE [Id] = @Id

END