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
using FootballTicketOffice.Pages;

namespace FootballTicketOffice.Pages
{
    /// <summary>
    /// Логика взаимодействия для TicketsPage.xaml
    /// </summary>
    public partial class TicketsPage : Page
    {
        public TicketsPage()
        {
            InitializeComponent();
            
        }

        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
            Manager.mainFrame.Navigate(new AddTicketPage());
        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            if (DGridTickets.SelectedItems.Count > 0)
            {
                var ticketsForRemove = DGridTickets.SelectedItems.Cast<Ticket>().ToList();
                if (MessageBox.Show($"Вы точно хотите удалить следующие {ticketsForRemove.Count()} элементов?", "", MessageBoxButton.YesNo) == MessageBoxResult.Yes)
                {
                    try
                    {
                        FootballTicketOfficeEntities.getContext().Ticket.RemoveRange(ticketsForRemove);
                        FootballTicketOfficeEntities.getContext().SaveChanges();
                        MessageBox.Show("Данные удалены!");
                        DGridTickets.ItemsSource = FootballTicketOfficeEntities.getContext().Ticket.ToList();
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

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
                DGridTickets.ItemsSource = FootballTicketOfficeEntities.getContext().Ticket.ToList();
        }

        private void txtBoxSearch_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            Regex regex = new Regex("[^а-яА-Я]");
            e.Handled = regex.IsMatch(e.Text);
        }

        private void txtBoxSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            List<Ticket> currentTicket = FootballTicketOfficeEntities.getContext().Ticket.ToList();
            currentTicket = currentTicket.Where(p => p.Client.LastName.ToLower().Contains(txtBoxSearch.Text.ToLower()) || p.Client.FirstName.ToLower().Contains(txtBoxSearch.Text.ToLower()) || p.Match.Team.Title.ToLower().Contains(txtBoxSearch.Text.ToLower()) || p.Match.Team1.Title.ToLower().Contains(txtBoxSearch.Text.ToLower()) || p.User.LastName.ToLower().Contains(txtBoxSearch.Text.ToLower()) || p.User.FirstName.ToLower().Contains(txtBoxSearch.Text.ToLower())).ToList();
            DGridTickets.ItemsSource = currentTicket.ToList();
        }
    }
}
