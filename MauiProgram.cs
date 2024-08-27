using Microsoft.Extensions.Logging;
using TodoListApp.Data;
using TodoListApp.Services;
using TodoListApp.ViewModels;
using TodoListApp.Views;

namespace TodoListApp
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                    fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
                });

            builder.Services.AddSingleton<TodoItemContext>();
            builder.Services.AddSingleton<TodoItemService>();
            builder.Services.AddSingleton<TodoItemViewModel>();
            builder.Services.AddTransient<MainPage>();

#if DEBUG
            builder.Logging.AddDebug();
#endif

            return builder.Build();
        }
    }
}