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
using FootballTicketOffice.Data;
using System.Windows.Navigation;
using FootballTicketOffice.Windows;
using FootballTicketOffice.Pages;
using FootballTicketOffice.Report;

namespace FootballTicketOffice
{
    /// <summary>
    /// Логика взаимодействия для BaseWindow.xaml
    /// </summary>
    public partial class BaseWindow : Window
    {
        public BaseWindow(User loginedUser)
        {
            InitializeComponent();
            btnBack.Visibility = Visibility.Hidden;
            Manager.baseWindow = this;
            DataContext = loginedUser;
            Manager.mainFrame = mainFrame;
            txtBlckUser.Text += Manager.loginedUser.LastName + ' ' + Manager.loginedUser.FirstName;
            roleImage.Source = new BitmapImage(new Uri($"pack://application:,,,/;component/Resources/{Manager.loginedUser.Role.Name}.png", UriKind.Absolute));
            if (Manager.loginedUser.Role.Name == "Admin")
            {
                btnAccounts.Visibility = Visibility.Collapsed;
                btnClients.Visibility = Visibility.Collapsed;
                btnTeams.Visibility = Visibility.Collapsed;
                btnTickets.Visibility = Visibility.Collapsed;
                btnMatches.Visibility = Visibility.Collapsed;
            }
            else if (Manager.loginedUser.Role.Name == "Cashier")
            {
                btnHistory.Visibility = Visibility.Collapsed;
                btnUsers.Visibility = Visibility.Collapsed;
                btnAccounts.Visibility = Visibility.Collapsed;
            }
            else if (Manager.loginedUser.Role.Name == "Accountant")
            {
                btnHistory.Visibility = Visibility.Collapsed;
                btnUsers.Visibility = Visibility.Collapsed;
                btnTeams.Visibility = Visibility.Collapsed;
                btnTickets.Visibility = Visibility.Collapsed;
            }
        }

        private void btnHistory_Click(object sender, RoutedEventArgs e)
        {
            Manager.mainFrame.Navigate(new HistoryPage());
            txtBlckHeader.Visibility = Visibility.Hidden;
        }
        private void btnUsers_Click(object sender, RoutedEventArgs e)
        {
            Manager.mainFrame.Navigate(new UserPage());
            txtBlckHeader.Visibility = Visibility.Hidden;
        }

        private void btnTickets_Click(object sender, RoutedEventArgs e)
        {
            Manager.mainFrame.Navigate(new TicketsPage());
            txtBlckHeader.Visibility = Visibility.Hidden;
        }

        private void btnClients_Click(object sender, RoutedEventArgs e)
        {
            Manager.mainFrame.Navigate(new ClientPage());
            txtBlckHeader.Visibility = Visibility.Hidden;
        }

        private void btnAccounts_Click(object sender, RoutedEventArgs e)
        {
            Manager.mainFrame.Navigate(new ReportPage());
            txtBlckHeader.Visibility = Visibility.Hidden;
        }

        private void btnExit_Click(object sender, RoutedEventArgs e)
        {
            Authorize authorize = new Authorize();
            authorize.Show();
            this.Close();
        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void btnTeams_Click(object sender, RoutedEventArgs e)
        {
            Manager.mainFrame.Navigate(new TeamPage());
            txtBlckHeader.Visibility = Visibility.Hidden;
        }

        private void btnBack_Click(object sender, RoutedEventArgs e)
        { 
            Manager.mainFrame.GoBack();          
        }

        private void mainFrame_ContentRendered(object sender, EventArgs e)
        {
            if (Manager.mainFrame.CanGoBack)
            {
                btnBack.Visibility = Visibility.Visible;
            }
            else
            {
                btnBack.Visibility = Visibility.Hidden;
            }
        }

        private void btnMatches_Click(object sender, RoutedEventArgs e)
        {
            Manager.mainFrame.Navigate(new MatchPage());
            txtBlckHeader.Visibility = Visibility.Hidden;
        }

        private void btnProfile_Click(object sender, RoutedEventArgs e)
        {
            Manager.mainFrame.Navigate(new ProfilePage());
            txtBlckHeader.Visibility = Visibility.Hidden;
        }
    }
}

