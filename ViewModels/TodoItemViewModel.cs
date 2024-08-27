using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Threading.Tasks;
using TodoListApp.Models;
using TodoListApp.Services;

namespace TodoListApp.ViewModels
{
    public class TodoItemViewModel : INotifyPropertyChanged
    {
        private readonly TodoItemService _todoItemService;
        public ObservableCollection<TodoItem> TodoItems { get; set; }

        public event PropertyChangedEventHandler PropertyChanged;

        public TodoItemViewModel(TodoItemService todoItemService)
        {
            _todoItemService = todoItemService;
            TodoItems = new ObservableCollection<TodoItem>();
        }

        public async Task InitializeAsync()
        {
            await LoadTodoItemsAsync();
        }

        public async Task LoadTodoItemsAsync()
        {
            var items = await _todoItemService.GetTodoItemsAsync();
            TodoItems.Clear();
            foreach (var item in items)
            {
                TodoItems.Add(item);
            }
        }

        public async Task AddTodoItemAsync(string title)
        {
            var newTodoItem = new TodoItem
            {
                Title = title,
                Description = string.Empty,
                IsDone = false
            };
            await _todoItemService.AddTodoItemAsync(newTodoItem);
            TodoItems.Add(newTodoItem);
        }

        public async Task DeleteSelectedItemsAsync()
        {
            var itemsToDelete = TodoItems.Where(item => item.IsSelected).ToList();
            foreach (var item in itemsToDelete)
            {
                await _todoItemService.DeleteTodoItemAsync(item.Id);
                TodoItems.Remove(item);
            }
        }
    }
}
