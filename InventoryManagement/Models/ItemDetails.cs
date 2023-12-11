namespace InventoryManagement.Models
{
    public class ItemDetails:BaseDMO
    {
        public string Code { get; set; } 
        public string Name { get; set; }
        public int Status { get; set; }
        public int Quantity { get; set; }
        public decimal Price { get; set; }
    }
}
