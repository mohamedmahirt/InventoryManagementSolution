CREATE PROCEDURE [dbo].[Usp_Item_Details_GetAll]	
AS
BEGIN
SELECT 
ItemMaster.Id,
ItemMaster.Code,
ItemMaster.Name,
ItemMaster.Status,
ItemMaster.CreatedBy,
ItemMaster.CreatedOn,
ItemMaster.ModifiedBy,
ItemMaster.ModifiedOn,
ItemQuantities.Quantity,
ItemQuantities.Price
FROM ItemMaster
JOIN ItemQuantities
ON ItemMaster.Id = ItemQuantities.ItemId
WHERE ItemMaster.IsDeleted = 0
End

