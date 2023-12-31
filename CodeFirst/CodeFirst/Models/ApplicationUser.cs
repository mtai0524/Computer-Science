﻿using CodeFirst.Chat.Entities;
using Microsoft.AspNetCore.Identity;

namespace CodeFirst.Models
{
    public class ApplicationUser : IdentityUser
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string? Avatar{ get; set; }
        public ICollection<Room>? Rooms { get; set; }
        public ICollection<Message>? Messages { get; set; }
    }
}
