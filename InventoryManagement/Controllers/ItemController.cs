using InventoryManagement.Models;
using InventoryManagement.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace InventoryManagement.Controllers
{
    [Authorize]
    public class ItemController : Controller
    {
        private readonly IItemServices _itemServices;

        public ItemController(IItemServices itemServices)
        {
            _itemServices = itemServices;
        }

        public IActionResult Index()
        {
            return View();
        }

        public List<ItemDetails> GetItems(string name)
        {
            return _itemServices.GetAllItems();
        }

        public void SaveOrUpdate(ItemDetails item)
        {
            _itemServices.SaveOrUpdate(item);
        }

        public void Delete(int id)
        {
            _itemServices.Delete(id);
        }

        public void Update(int itemid)
        {
            _itemServices.GetItemDetails(itemid);
        }
    }
}
