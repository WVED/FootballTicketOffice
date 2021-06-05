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
using FootballTicketOffice.Data;
using FootballTicketOffice.Windows;

namespace FootballTicketOffice.Pages
{
    /// <summary>
    /// Логика взаимодействия для ProfilePage.xaml
    /// </summary>
    public partial class ProfilePage : Page
    {
        public ProfilePage()
        {
            InitializeComponent();
            DataContext = Manager.loginedUser;
            roleImage.Source = new BitmapImage(new Uri($"pack://application:,,,/;component/Resources/{Manager.loginedUser.Role.Name}.png", UriKind.Absolute));
        }

        private void btnChangePassword_Click(object sender, RoutedEventArgs e)
        {
            ChangePasswordWindow change = new ChangePasswordWindow();
            change.ShowDialog();
        }
    }
}
