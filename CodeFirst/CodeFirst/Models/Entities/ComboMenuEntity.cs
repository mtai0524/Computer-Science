﻿using System.ComponentModel.DataAnnotations;

namespace CodeFirst.Models.Entities
{
    public class ComboMenuEntity
    {
        [Key]
        public int ComboMenuId { get; set; }

        [Required(ErrorMessage = "Vui lòng nhập tên combo menu")]
        [Display(Name = "Tên combo menu")]
        public string Name { get; set; }

        public virtual ICollection<MenuItemComboMenu>? MenuItemComboMenus { get; set; }
        public double ComboPrice { get; set; }

    }
}
