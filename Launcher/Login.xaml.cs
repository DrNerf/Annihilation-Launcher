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
using System.Windows.Shapes;
using System.Diagnostics;
using System.IO;
using System.Net;

namespace Launcher
{
    /// <summary>
    /// Interaction logic for Login.xaml
    /// </summary>
    public partial class Login : Window
    {
        public Login()
        {
            InitializeComponent();
        }

        internal void Initialise()
        {
            InitializeComponent();
        }

        private void Exit(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void Minimize(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }

        private void LoginButton(object sender, RoutedEventArgs e)
        {
            string ServerInfo = null;
            LoadingAccount.Visibility = Visibility.Visible;

            try
            {
                ServerInfo = ConnectToServer();
            }
            catch
            {
                MessageBox.Show("There was a problem with connection to server. \nPlease check your connection!");
                LoadingAccount.Visibility = Visibility.Hidden;
            }

            if (ServerInfo.Contains("v0.1.0"))
            {
                if (ServerInfo.Contains("Hi seems like you have beta access!"))
                {
                    LoadingAccount.Visibility = Visibility.Hidden;
                    StartGame();
                }
                else
                {
                    BadAccount.Visibility = Visibility.Visible;
                    BadAccount1.Visibility = Visibility.Visible;
                    LoadingAccount.Visibility = Visibility.Hidden;
                }
            }
            else
            {
                MessageBox.Show("Your game client version is to old! \nPlease head to http://www.pvp-gaming.net and download your new client!");
                LoadingAccount.Visibility = Visibility.Hidden;
            }
        }

        private string ConnectToServer()
        {
            if (Username.Text != null && PasswordBox.Password != null)
            {
                var cookies = new CookieContainer();
                ServicePointManager.Expect100Continue = false;

                var request = (HttpWebRequest)WebRequest.Create("http://www.pvp-gaming.net/Account/LogOn");
                request.CookieContainer = cookies;
                request.Method = "POST";
                request.ContentType = "application/x-www-form-urlencoded";
                using (var requestStream = request.GetRequestStream())
                using (var writer = new StreamWriter(requestStream))
                {
                    writer.Write("UserName={0}&Password={1}&RememberMe={2}", Username.Text, PasswordBox.Password, true);
                }

                using (var responseStream = request.GetResponse().GetResponseStream())
                using (var reader = new StreamReader(responseStream))
                {
                    return reader.ReadToEnd();
                }

                
            }
            else
            {
                BadAccount.Visibility = Visibility.Visible;
                return null;
            }

        }

        private void StartGame()
        {
            //game start
            try
            {
                string[] TempArr = new string[1];
                TempArr[0] = "Authorized = True";
                Process Annihilation = new Process();
                Annihilation.StartInfo.FileName = "Annihilation.exe";
                Annihilation.StartInfo.Arguments = "";
                File.WriteAllLines("Annihilation_Data/Resources/Authorize.txt", TempArr);
                bool result = Annihilation.Start();
                Application.Current.Shutdown();
            }
            catch(Exception e)
            {
                MessageBox.Show(e.Message);
            }
        }
    }
}
