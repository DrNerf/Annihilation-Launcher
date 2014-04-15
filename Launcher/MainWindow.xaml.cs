using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.IO;
using HtmlAgilityPack;

namespace Launcher
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            LoadNews();
        }

        private void Exit(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void Minimize(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }

        private void Play(object sender, RoutedEventArgs e)
        {
            var LoginPage = new Login { Owner = this };
            LoginPage.Initialise();
            LoginPage.Show();
            this.Hide();
        }

        private void LoadNews()
        {
            try
                {

                HtmlDocument Page = new HtmlDocument();
                HtmlWeb WebGet = new HtmlWeb();
                Page = WebGet.Load("http://www.pvp-gaming.net");
                HtmlNodeCollection SampleNodes = Page.DocumentNode.SelectNodes("//h2");


                foreach (HtmlNode item in SampleNodes)
                {

                    PrintInNewsBox(item.InnerText);
                    PrintInNewsBox("-----------------------------");
                }
                LoadingGif.Source = null;
                
            }
            catch
            {
                LoadingGif.Source = null;
                PrintInNewsBox("CHECK INTERNET CONNECTION!");
            }
        }

        private void PrintInNewsBox(string Message)
        {
            Label lbl = new Label();
            lbl.Content = Message;
            lbl.Margin = new Thickness(0d);
            lbl.Foreground = Brushes.SandyBrown;
            NewsPanel.Children.Add(lbl);
        }
    }
}
