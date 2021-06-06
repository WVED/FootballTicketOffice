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

namespace FootballTicketOffice.Windows
{
    /// <summary>
    /// Логика взаимодействия для Authorize.xaml
    /// </summary>
    public partial class Authorize : Window
    {
       public Authorize()
        {
            InitializeComponent();
        }

        private void chkBxPasswd_Checked(object sender, RoutedEventArgs e)
        {
            txtBxPasswd.Visibility = Visibility.Visible;
            passwdBx.Visibility = Visibility.Hidden;
            txtBxPasswd.Text = passwdBx.Password;
            chkLabel.Text = "Скрыть пароль";
        }

        private void chkBxPasswd_Unchecked(object sender, RoutedEventArgs e)
        {
            txtBxPasswd.Visibility = Visibility.Hidden;
            passwdBx.Visibility = Visibility.Visible;
            passwdBx.Password = txtBxPasswd.Text;
            chkLabel.Text = "Показать пароль";
        }

        private void btnCls_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void btnLgn_Click(object sender, RoutedEventArgs e)
        {
            int userId = 0;
            int count = 0;
            HistoryAuthorize userAuth = new HistoryAuthorize();
            foreach (var User in FootballTicketOfficeEntities.getContext().User)
            {
                count++;
                if (txtBxLgn.Text == User.Login)
                {
                    userId = User.Id;
                }
                if (txtBxLgn.Text == User.Login && (passwdBx.Password == User.Password || txtBxPasswd.Text == User.Password))
                {
                    count = 0;
                    userAuth.DateTime = DateTime.Now;
                    userAuth.Status = "Successful";
                    userAuth.UserId = User.Id;
                    Manager.loginedUser = User;
                    MessageBox.Show("Вы успешно авторизованы!", "Информация", MessageBoxButton.OK, MessageBoxImage.Information);
                    BaseWindow baseWindow = new BaseWindow(User);
                    baseWindow.Show();
                    this.Close();
                    break;
                }
            }
            if (count == 0)
            {
                try
                {
                    FootballTicketOfficeEntities.getContext().HistoryAuthorize.Add(userAuth);
                    FootballTicketOfficeEntities.getContext().SaveChanges();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
            if (count != 0)
            {
                MessageBox.Show("Вы ввели неверный логин или пароль", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                if (userId != 0)
                {
                    try
                    {
                        userAuth.DateTime = DateTime.Now;
                        userAuth.Status = "Access denied";
                        userAuth.UserId = userId;
                        FootballTicketOfficeEntities.getContext().HistoryAuthorize.Add(userAuth);
                        FootballTicketOfficeEntities.getContext().SaveChanges();
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message.ToString());
                    }
                }
            }
        }
    }
}
