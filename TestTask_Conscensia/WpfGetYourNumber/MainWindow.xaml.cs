using System;
using System.Net.Http;
using System.Windows;
using System.Windows.Threading;

namespace WpfGetYourNumber
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private static System.Timers.Timer aTimer;

        HttpClient client = new HttpClient();

        public DispatcherPriority Visible { get; private set; }

        public MainWindow()
        {
            InitializeComponent();
            aTimer = new System.Timers.Timer();
            aTimer.Interval = 1000;

            // Hook up the Elapsed event for the timer. 
            aTimer.Elapsed += OnTimedEvent;

            // Have the timer fire repeated events (true is the default)
            aTimer.AutoReset = true;
        }

        public delegate void UpdateValueCallback(int value);

        public delegate void SetVisibilityForWebApCallback(Visibility Visible);

        public delegate void SetVisibilityTryParseCallback(Visibility Visible);

        private void UpdateValue(int value)
        {
            sliderName.Value = value;
        }

        private void SetVisibilityForWebAp(Visibility Visible)
        {
            ErrorMessageForWebApi.Visibility = Visible;
        }

        private void SetVisibilityTryParse(Visibility Visible)
        {
            ErrorMessageForTryParse.Visibility = Visible;
        }

        private async void OnTimedEvent(Object source, System.Timers.ElapsedEventArgs e)
        {
            try
            {
                HttpResponseMessage response = client.GetAsync("https://localhost:44307/generatednumber").Result;
                string rundomNumber = await response.Content.ReadAsStringAsync();
                //System.Diagnostics.Trace.WriteLine(rundomNumber);
                int number;
                bool success = Int32.TryParse(rundomNumber, out number);
                if (success)
                {
                    sliderName.Dispatcher.Invoke(
                    new UpdateValueCallback(this.UpdateValue), number);
                }
                else
                {
                    ErrorMessageForTryParse.Dispatcher.Invoke(
                    new SetVisibilityTryParseCallback(this.SetVisibilityTryParse), Visibility.Visible);
                }
                
            }
            catch
            {
                ErrorMessageForWebApi.Dispatcher.Invoke(
                    new SetVisibilityForWebApCallback(this.SetVisibilityForWebAp), Visibility.Visible);
            }
        }

        private void btnStart_Click(object sender, RoutedEventArgs e)
        {
            aTimer.Enabled = true;
        }

        private void btnStop_Click(object sender, RoutedEventArgs e)
        {
            aTimer.Enabled = false;
        }

    }
}
