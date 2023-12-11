namespace InventoryManagement.Models
{
    public class UserLogin
    {
        public string Email { get; set; } = "";
        public string Password { get; set; } = "";
        public bool KeepLoggedIn { get; set; }
    }
}
