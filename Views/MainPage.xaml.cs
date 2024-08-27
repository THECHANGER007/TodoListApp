using TodoListApp.ViewModels;

namespace TodoListApp.Views
{
    public partial class MainPage : ContentPage
    {
        private readonly TodoItemViewModel _viewModel;

        public MainPage(TodoItemViewModel viewModel)
        {
            InitializeComponent();
            _viewModel = viewModel;
            BindingContext = _viewModel;
        }

        protected override async void OnAppearing()
        {
            base.OnAppearing();
            await _viewModel.InitializeAsync();
        }

        private async void OnAddTodoClicked(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(TodoEntry.Text))
            {
                await _viewModel.AddTodoItemAsync(TodoEntry.Text);
                TodoEntry.Text = string.Empty;
            }
        }

        private async void OnDeleteSelectedClicked(object sender, EventArgs e)
        {
            await _viewModel.DeleteSelectedItemsAsync();
        }
    }
}
