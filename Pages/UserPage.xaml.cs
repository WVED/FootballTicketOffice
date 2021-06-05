using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
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

namespace FootballTicketOffice
{
    /// <summary>
    /// Логика взаимодействия для UserPage.xaml
    /// </summary>
    public partial class UserPage : Page
    {
        public UserPage()
        {
            InitializeComponent();
            
        }

        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {
            Manager.mainFrame.Navigate(new UserEditPage((sender as Button).DataContext as User));
        }

        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
            Manager.mainFrame.Navigate(null);
        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
                FootballTicketOfficeEntities.getContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
                DGridUser.ItemsSource = FootballTicketOfficeEntities.getContext().User.ToList();
            }
        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            if (DGridUser.SelectedItems.Count > 0)
            {
                var usersForRemove = DGridUser.SelectedItems.Cast<User>().ToList();
                if (MessageBox.Show($"Вы точно хотите удалить следующие {usersForRemove.Count()} элементов?", "", MessageBoxButton.YesNo) == MessageBoxResult.Yes)
                { try
                    {
                        FootballTicketOfficeEntities.getContext().User.RemoveRange(usersForRemove);
                        FootballTicketOfficeEntities.getContext().SaveChanges();
                        MessageBox.Show("Данные удалены!");
                        DGridUser.ItemsSource = FootballTicketOfficeEntities.getContext().User.ToList();
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message.ToString());
                    }
                }
            }
            else
            {
                MessageBox.Show("Вы не выбрали ни одну запись для удаления!", "Информация", MessageBoxButton.OK, MessageBoxImage.Information);
            }
        }

        private void txtBoxSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            List<User> currentUser = FootballTicketOfficeEntities.getContext().User.ToList();
            currentUser = currentUser.Where(p => p.FirstName.ToLower().Contains(txtBoxSearch.Text.ToLower()) || p.LastName.ToLower().Contains(txtBoxSearch.Text.ToLower()) || p.Role.Name.ToLower().Contains(txtBoxSearch.Text.ToLower()) || p.Login.ToLower().Contains(txtBoxSearch.Text.ToLower())).ToList();
            DGridUser.ItemsSource = currentUser.ToList();
        }

        private void txtBoxSearch_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            Regex regex = new Regex("^[a-zA-Z]");
            e.Handled = regex.IsMatch(e.Text);
        }
    }
}
