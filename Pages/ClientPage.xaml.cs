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
using Xceed.Wpf.Toolkit;

namespace FootballTicketOffice
{
    /// <summary>
    /// Логика взаимодействия для ClientPage.xaml
    /// </summary>
    public partial class ClientPage : Page
    {
        public ClientPage()
        {
            InitializeComponent();
            DGridClient.ItemsSource = FootballTicketOfficeEntities.getContext().Client.ToList();
        }

        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {
            Manager.mainFrame.Navigate(new ClientEditPage((sender as Button).DataContext as Client));
        }

        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
            Manager.mainFrame.Navigate(new ClientEditPage((sender as Button).DataContext as Client));
        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            if (DGridClient.SelectedItems.Count > 0)
            {
                var clientsForRemove = DGridClient.SelectedItems.Cast<Client>().ToList();
                if (System.Windows.MessageBox.Show($"Вы точно хотите удалить следующие {clientsForRemove.Count()} элементов?", "", MessageBoxButton.YesNo) == MessageBoxResult.Yes)
                {
                    try
                    {
                        FootballTicketOfficeEntities.getContext().Client.RemoveRange(clientsForRemove);
                        FootballTicketOfficeEntities.getContext().SaveChanges();
                        System.Windows.MessageBox.Show("Данные удалены!");
                        DGridClient.ItemsSource = FootballTicketOfficeEntities.getContext().Client.ToList();
                    }
                    catch (Exception ex)
                    {
                        System.Windows.MessageBox.Show(ex.Message.ToString());
                    }
                }
            }
            else
            {
                System.Windows.MessageBox.Show("Вы не выбрали ни одну запись для удаления!", "Информация", MessageBoxButton.OK, MessageBoxImage.Information);
            }
        }

        private void txtBoxSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            List<Client> currentClient = FootballTicketOfficeEntities.getContext().Client.ToList();
            currentClient = currentClient.Where(p => p.FirstName.ToLower().Contains(txtBoxSearch.Text.ToLower()) || p.LastName.ToLower().Contains(txtBoxSearch.Text.ToLower())).ToList();
            DGridClient.ItemsSource = currentClient.ToList();
        }

        private void txtBoxSearch_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            Regex regex = new Regex("[^а-яА-Я]");
            e.Handled = regex.IsMatch(e.Text);
        }
    }
}
