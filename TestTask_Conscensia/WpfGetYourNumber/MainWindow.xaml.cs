using System;
using System.Net.Http;
using System.Windows;

namespace WpfGetYourNumber
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private static System.Timers.Timer aTimer;

        HttpClient client = new HttpClient();

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

        private void UpdateValue(int value)
        {
            sliderName.Value = value;
        }

        private async void OnTimedEvent(Object source, System.Timers.ElapsedEventArgs e)
        {
            HttpResponseMessage response = client.GetAsync("https://localhost:44307/generatednumber").Result;

            string rundomNumber = await response.Content.ReadAsStringAsync();
            System.Diagnostics.Trace.WriteLine(rundomNumber);

            sliderName.Dispatcher.Invoke(
            new UpdateValueCallback(this.UpdateValue),
            Int32.Parse(rundomNumber)
            );
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
