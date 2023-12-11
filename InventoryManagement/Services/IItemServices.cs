using InventoryManagement.Models;

namespace InventoryManagement.Services
{
    public interface IItemServices
    {
        List<ItemDetails> GetAllItems();
        void SaveOrUpdate(ItemDetails item);
        void Delete(int id);
        ItemDetails GetItemDetails(int id);
    }
}
