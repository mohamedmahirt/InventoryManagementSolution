CREATE PROCEDURE [dbo].[Usp_Item_Quantities_GetById]
	 @Id  INT
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
	WHERE [Id] = @Id

END