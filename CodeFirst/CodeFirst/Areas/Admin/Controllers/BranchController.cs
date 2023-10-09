﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using CodeFirst.Data;
using CodeFirst.Models.Entities;
using CodeFirst.Service;
using AspNetCoreHero.ToastNotification.Abstractions;
using CloudinaryDotNet;

namespace CodeFirst.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class BranchController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly Cloudinary _cloudinary;
        private readonly INotyfService _noti;
        private readonly CloudinaryService _cloudianryService;

        public BranchController(ApplicationDbContext context, Cloudinary cloudinary, INotyfService noti, CloudinaryService cloudinaryService)
        {
            _context = context;
            _cloudinary = cloudinary;
            _noti = noti;
            _cloudianryService = cloudinaryService;
        }

        // GET: Admin/Branch
        public async Task<IActionResult> Index()
        {
              return _context.Branch != null ? 
                          View(await _context.Branch.ToListAsync()) :
                          Problem("Entity set 'ApplicationDbContext.Branch'  is null.");
        }

        // GET: Admin/Branch/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.Branch == null)
            {
                return NotFound();
            }

            var branch = await _context.Branch
                .FirstOrDefaultAsync(m => m.BranchId == id);
            if (branch == null)
            {
                return NotFound();
            }

            return View(branch);
        }

        // GET: Admin/Branch/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Admin/Branch/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("BranchId,Name,Description,Image")] Branch branch, IFormFile imageFile)
        {
            if (imageFile == null || imageFile.Length == 0)
            {
                ModelState.AddModelError("ImageFile", "Vui lòng chọn một hình ảnh.");
            }


            if (ModelState.IsValid)
            {
                branch.Image = await _cloudianryService.UploadImageAsync(imageFile);

                _context.Add(branch);
                await _context.SaveChangesAsync();
                _noti.Success("Thêm chi nhánh thành công gòi nha!");

                return RedirectToAction(nameof(Index));
            }
            return View(branch);
        }

        // GET: Admin/Branch/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.Branch == null)
            {
                return NotFound();
            }

            var branch = await _context.Branch.FindAsync(id);
            if (branch == null)
            {
                return NotFound();
            }
            return View(branch);
        }

        // POST: Admin/Branch/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("BranchId,Name,Description,Image")] Branch branch, IFormFile imageFile)
        {
            if (id != branch.BranchId)
            {
                return NotFound();
            }
            // Kiểm tra xem người dùng có chọn ảnh mới hay không
            bool isImageChanged = imageFile != null && imageFile.Length > 0;

            if (!ModelState.IsValid)
            {
                if (!isImageChanged)
                {
                    // Nếu người dùng không chọn ảnh mới, tìm đối tượng MenuEntity hiện có từ cơ sở dữ liệu
                    var existingMenuEntity = await _context.Branch.FindAsync(id);
                    if (existingMenuEntity != null)
                    {
                        // Sử dụng đường dẫn ảnh từ đối tượng hiện có
                        branch.Image = existingMenuEntity.Image;
                    }
                }
                try
                {
                    _noti.Success("Sửa chi nhánh thành công gòi nha!");
                    _context.Update(branch);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!BranchExists(branch.BranchId))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }

            if (ModelState.IsValid)
            {
                if (isImageChanged)
                {
                    // Nếu người dùng đã chọn ảnh mới, xử lý việc tải lên và cập nhật đường dẫn hình
                    branch.Image = await _cloudianryService.UploadImageAsync(imageFile);
                }

                try
                {
                    _noti.Success("Sửa chi nhánh thành công gòi nha!");
                    _context.Update(branch);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!BranchExists(branch.BranchId))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(branch);
        }

        // GET: Admin/Branch/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.Branch == null)
            {
                return NotFound();
            }

            var branch = await _context.Branch
                .FirstOrDefaultAsync(m => m.BranchId == id);
            if (branch == null)
            {
                return NotFound();
            }

            return View(branch);
        }

        // POST: Admin/Branch/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.Branch == null)
            {
                return Problem("Entity set 'ApplicationDbContext.Branch'  is null.");
            }
            var branch = await _context.Branch.FindAsync(id);
            if (branch != null)
            {
                _context.Branch.Remove(branch);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool BranchExists(int id)
        {
          return (_context.Branch?.Any(e => e.BranchId == id)).GetValueOrDefault();
        }
    }
}