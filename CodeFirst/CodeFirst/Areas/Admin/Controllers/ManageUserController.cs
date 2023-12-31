﻿using AspNetCoreHero.ToastNotification.Abstractions;
using CodeFirst.Controllers;
using CodeFirst.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;

namespace CodeFirst.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class ManageUserController : Controller
    {
        private readonly ILogger<ManageUserController> _logger;
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly RoleManager<IdentityRole> _roleManager;
        private readonly SignInManager<ApplicationUser> _signInManager;
        private readonly INotyfService _notfy;
        public ManageUserController(ILogger<ManageUserController> logger, UserManager<ApplicationUser> userManager, RoleManager<IdentityRole> roleManager, SignInManager<ApplicationUser> signInManager, INotyfService notfy)
        {
            _logger = logger;
            this._userManager = userManager;
            this._roleManager = roleManager;
            this._signInManager = signInManager;
            this._notfy = notfy;

        }
        [Authorize(Roles = "administrator system, admin")]

        public IActionResult Index()
        {
            //_notfy.Success("Success Notification");
            //_notfy.Success("Success Notification that closes in 10 Seconds.", 10);
            //_notfy.Error("Some Error Message");
            //_notfy.Warning("Some Error Message");
            //_notfy.Information("Information Notification - closes in 4 seconds.", 4);
            //_notfy.Custom("Custom Notification <br><b><i>closes in 5 seconds.</i></b></p>", 5, "indigo", "fa fa-gear");
            //_notfy.Custom("Custom Notification - closes in 5 seconds.", 5, "whitesmoke", "fa fa-gear");
            //_notfy.Custom("Custom Notification - closes in 10 seconds.", 10, "#B600FF", "fa fa-home");
            //_notfy.Success("Success Notification");
            // Lấy danh sách tất cả người dùng và danh sách vai trò
            var users = _userManager.Users.ToList();
            var roles = _roleManager.Roles.ToList();

            // Tạo một danh sách kết hợp giữa người dùng và vai trò
            var userRoles = new List<Tuple<ApplicationUser, IList<string>>>();

            foreach (var user in users)
            {
                var userRoleNames = _userManager.GetRolesAsync(user).Result;
                userRoles.Add(new Tuple<ApplicationUser, IList<string>>(user, userRoleNames));
            }

            // Truyền danh sách kết hợp vào view
            ViewData["UserRoles"] = userRoles;

            return View();
        }
        [Authorize(Roles = "administrator system")]

        public async Task<IActionResult> DeleteUser(string id)
        {
            var user = await _userManager.FindByIdAsync(id);
            if (user == null)
            {
                ViewBag.ErrorMessage = $"User with Id = {id} cannot be found";
                return View("NotFound");
            }

            // Kiểm tra xem người dùng đang đăng nhập có cùng ID với người dùng được xóa không
            var currentUser = await _userManager.GetUserAsync(User); // Lấy user đang đăng nhập
            if (currentUser.Id == user.Id)
            {
                // Xóa chính mình
                _notfy.Error("Xóa chính mình để chi?");
                return RedirectToAction("Index");
            }

            var result = await _userManager.DeleteAsync(user);
            if (result.Succeeded)
            {
                _notfy.Error("Xóa thành công");
                return RedirectToAction("Index");
            }
            return View("Index");
        }

        [Authorize(Roles = "administrator system")]

        [HttpGet]
        public async Task<IActionResult> EditUser(string id)
        {
            var user = await _userManager.FindByIdAsync(id);
            var roles = await _roleManager.Roles.ToListAsync();
            var roleList = roles.Select(r => new SelectListItem
            {
                Text = r.Name,
                Value = r.Id
            }).ToList();
            if (user == null)
            {
                ViewBag.ErrorMsg = $"User with id = {id} cannot by found";
                return View("NotFound");
            }
            var userViewModel = new UserViewModel
            {
                Id = user.Id,
                UserName = user.UserName,
                Roles = roleList,
                // Thêm các thuộc tính khác của người dùng vào đây
            };
            return View("EditUser", userViewModel);
        }
        [HttpPost]
        [Authorize(Roles = "administrator system, admin")]

        public async Task<IActionResult> EditUser(UserViewModel model)
        {
            if (ModelState.IsValid)
            {
                var user = await _userManager.FindByIdAsync(model.Id);
                //if (user == null)
                //{
                //    
                //}

                // Cập nhật thông tin người dùng dựa trên model
                user.UserName = model.UserName;
                var currentUser = await _userManager.FindByNameAsync(User.Identity.Name);
                var currentRoles = await _userManager.GetRolesAsync(user);
                await _userManager.RemoveFromRolesAsync(user, currentRoles);
                // Trả về dòng role theo Id truyền từ SelectedRole
                var role = await _roleManager.Roles.SingleOrDefaultAsync(r => r.Id == model.SelectedRole.ToLower());

                // Thêm người dùng vào vai trò
                await _userManager.AddToRoleAsync(user, role.Name);
                //// Sau đó, thêm vai trò mới mà người dùng đã chọn

                // Lưu thay đổi vào cơ sở dữ liệu
                var result = await _userManager.UpdateAsync(user);

                if (result.Succeeded)
                {
                    _notfy.Success("Sửa thành công");

                    await _signInManager.RefreshSignInAsync(currentUser);
                    //await _signInManager.RefreshSignInAsync(user);
                    // Lưu thành công, chuyển hướng đến trang chi tiết người dùng
                    return RedirectToAction("Index", new { id = user.Id });
                }
            }

            // Nếu ModelState không hợp lệ, hiển thị lại form với thông báo lỗi
            return View("EditUser", model);
        }

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
