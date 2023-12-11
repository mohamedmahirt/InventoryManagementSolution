using InventoryManagement.Context;
using InventoryManagement.Models;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using System.Data;
using System.Globalization;

namespace InventoryManagement.Services
{
    public class ItemServices : IItemServices
    {
        private readonly IMSDbContext _dbContext;

        public ItemServices(IMSDbContext dbContext)
        {
            this._dbContext = dbContext;
        }
        public void Delete(int id)
        {
            var items = _dbContext.Database.ExecuteSqlRaw($"Usp_Item_Master_Delete {id},{1},{DateTime.UtcNow}");
        }

        public List<ItemDetails> GetAllItems()
        {
            var items =  _dbContext.Database.ExecuteSqlRaw($"Usp_Item_Details_GetAll");

            return new List<ItemDetails>();
        }

        public ItemDetails GetItemDetails(int id)
        {
            var item = _dbContext.Database.ExecuteSqlRaw($"Usp_Item_Master_GetById {id}");
            return new ItemDetails();
        }

        public void SaveOrUpdate(ItemDetails item)
        {
            DateTime date = DateTime.ParseExact("24/01/2013", "yyyy/MM/dd/", CultureInfo.InvariantCulture);
            var parameter = new List<SqlParameter>();
            parameter.Add(new SqlParameter("@Id", item.Id));
            parameter.Add(new SqlParameter("@Code", item.Code));
            parameter.Add(new SqlParameter("@Name", item.Name));
            parameter.Add(new SqlParameter("@Status", item.Status));
            parameter.Add(new SqlParameter("@CreatedBy", item.CreatedBy));
            parameter.Add(new SqlParameter("@CreatedOn", date));
            parameter.Add(new SqlParameter("@ModifiedBy", item.CreatedBy));
            parameter.Add(new SqlParameter("@ModifiedOn", date));
            //var items = _dbContext.Database.ExecuteSqlRaw($"exec Usp_SaveOrUpdateItem {0}, {item.Code},{item.Name},{item.Status},{item.CreatedBy},{DateTime.UtcNow},{item.ModifiedBy},{DateTime.UtcNow}");
            var result = _dbContext.Database
            .ExecuteSqlRaw(@"exec Usp_SaveOrUpdateItem @Code, @Name, @Status, @CreatedBy, @CreatedOn, @ModifiedBy, @ModifiedOn", parameter.ToArray());

        }
    }
}
