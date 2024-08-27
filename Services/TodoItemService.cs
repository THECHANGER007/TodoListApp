using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using TodoListApp.Models;
using TodoListApp.Data;

namespace TodoListApp.Services
{
    public class TodoItemService
    {
        private readonly TodoItemContext _context;

        public TodoItemService(TodoItemContext context)
        {
            _context = context;
        }

        public async Task<List<TodoItem>> GetTodoItemsAsync()
        {
            return await _context.TodoItems.ToListAsync();
        }

        public async Task AddTodoItemAsync(TodoItem todoItem)
        {
            _context.TodoItems.Add(todoItem);
            await _context.SaveChangesAsync();
        }

        public async Task DeleteTodoItemAsync(int id)
        {
            var todoItem = await _context.TodoItems.FindAsync(id);
            if (todoItem != null)
            {
                _context.TodoItems.Remove(todoItem);
                await _context.SaveChangesAsync();
            }
        }
    
}
}