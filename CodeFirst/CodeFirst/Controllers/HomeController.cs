﻿using AspNetCoreHero.ToastNotification.Abstractions;
using CodeFirst.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using System;
using System.Diagnostics;

namespace CodeFirst.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly RoleManager<IdentityRole> _roleManager;
        private readonly SignInManager<ApplicationUser> _signInManager;
        private readonly INotyfService _notfy;


        public HomeController(ILogger<HomeController> logger, UserManager<ApplicationUser> userManager, RoleManager<IdentityRole> roleManager, SignInManager<ApplicationUser> signInManager, INotyfService notfy)
        {
            _logger = logger;
            this._userManager = userManager;
            this._roleManager = roleManager;
            this._signInManager = signInManager;
            this._notfy = notfy;
            
        }
        [Authorize]
        public IActionResult Index()
        {
            return View("Index");
        }
        public IActionResult Blazor()
        {
            return View("_Host");
        }
        //public async Task<IActionResult> DeleteUser(string id)
        //{
        //    var user = await _userManager.FindByIdAsync(id);
        //    if(user == null)
        //    {
        //        ViewBag.ErrorMessage = $"User with Id = {id} cannot be found";
        //        return View("NotFound");

        //    }
        //    else
        //    {
        //        var result = await _userManager.DeleteAsync(user);
        //        if (result.Succeeded)
        //        {
        //            _notfy.Error("Xóa thành công");

        //            return RedirectToAction("Index");
        //        }
        //        return View("Index");
        //    }
        //}
        //[HttpGet]
        //public async Task<IActionResult> EditUser(string id)
        //{
        //    var user = await _userManager.FindByIdAsync(id);
        //    var roles = await _roleManager.Roles.ToListAsync();
        //    var roleList = roles.Select(r => new SelectListItem
        //    {
        //        Text = r.Name,
        //        Value = r.Id
        //    }).ToList();
        //    if (user == null)
        //    {
        //        ViewBag.ErrorMsg = $"User with id = {id} cannot by found";
        //        return View("NotFound");
        //    }
        //    var userViewModel = new UserViewModel
        //    {
        //        Id = user.Id,
        //        UserName = user.UserName,
        //        Roles = roleList,
        //        // Thêm các thuộc tính khác của người dùng vào đây
        //    };
        //    return View("EditUser", userViewModel);
        //}
        //[HttpPost]
        //public async Task<IActionResult> EditUser(UserViewModel model)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        var user = await _userManager.FindByIdAsync(model.Id);
        //        //if (user == null)
        //        //{
        //        //    
        //        //}

        //        // Cập nhật thông tin người dùng dựa trên model
        //        user.UserName = model.UserName;
        //        var currentUser = await _userManager.FindByNameAsync(User.Identity.Name);
        //        var currentRoles = await _userManager.GetRolesAsync(user);
        //        await _userManager.RemoveFromRolesAsync(user, currentRoles);
        //        // Trả về dòng role theo Id truyền từ SelectedRole
        //        var role = await _roleManager.Roles.SingleOrDefaultAsync(r => r.Id == model.SelectedRole.ToLower());

        //        // Thêm người dùng vào vai trò
        //        await _userManager.AddToRoleAsync(user, role.Name);
        //        //// Sau đó, thêm vai trò mới mà người dùng đã chọn

        //        // Lưu thay đổi vào cơ sở dữ liệu
        //        var result = await _userManager.UpdateAsync(user);

        //        if (result.Succeeded)
        //        {
        //            _notfy.Success("Sửa thành công");

        //            await _signInManager.RefreshSignInAsync(currentUser);
        //            //await _signInManager.RefreshSignInAsync(user);
        //            // Lưu thành công, chuyển hướng đến trang chi tiết người dùng
        //            return RedirectToAction("Index", new { id = user.Id });
        //        }
        //    }

        //    // Nếu ModelState không hợp lệ, hiển thị lại form với thông báo lỗi
        //    return View("EditUser", model);
        //}

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}