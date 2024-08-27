using TodoListApp.ViewModels;

namespace TodoListApp
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            // Add global exception handling
            AppDomain.CurrentDomain.UnhandledException += CurrentDomain_UnhandledException;
            TaskScheduler.UnobservedTaskException += TaskScheduler_UnobservedTaskException;

            MainPage = new AppShell();
        }

        private void CurrentDomain_UnhandledException(object sender, UnhandledExceptionEventArgs e)
        {
            Console.WriteLine($"Unhandled Exception: {e.ExceptionObject}");
        }

        private void TaskScheduler_UnobservedTaskException(object sender, UnobservedTaskExceptionEventArgs e)
        {
            Console.WriteLine($"Unobserved Task Exception: {e.Exception}");
            e.SetObserved();
        }
    }
}