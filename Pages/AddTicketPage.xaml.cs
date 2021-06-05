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
using System.Text.RegularExpressions;
using FootballTicketOffice.Data;

namespace FootballTicketOffice
{
    /// <summary>
    /// Логика взаимодействия для TicketPage.xaml
    /// </summary>
    public partial class AddTicketPage : Page
    {
        private Ticket ticket;
        public AddTicketPage()
        {
            InitializeComponent();
            ticket = new Ticket();
            DataContext = ticket;
            comboBoxClient.ItemsSource = FootballTicketOfficeEntities.getContext().Client.ToList();
            comboBoxMatch.ItemsSource = FootballTicketOfficeEntities.getContext().Match.ToList();
            int[] row = new int[] {1,2,3,4,5,6,7,8 };
            int[] seat = new int[] {1,2,3,4,5,6,7,8,9,10 };
            int[] sector = new int[] {1,2,3,4,5,6 };
            comboBoxRow.ItemsSource = row;
            comboBoxSector.ItemsSource = sector;
            comboBoxSite.ItemsSource = seat;
        }
        private void txtBoxPrice_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            Regex regex = new Regex("[^0-9]+");
            e.Handled = regex.IsMatch(e.Text);
        }

        private void btnCheckOut_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();
            if (comboBoxSector.SelectedItem == null)
            {
                errors.AppendLine("Вы не выбрали сектор");
            }
            if (comboBoxRow.SelectedItem == null)
            {
                errors.AppendLine("Вы не выбрали ряд");
            }
            if (comboBoxSite.SelectedItem == null)
            {
                errors.AppendLine("Вы не выбрали место");
            }
            if (txtBoxPrice.Text == "" || ticket.Price == 0)
            {
                errors.AppendLine("Вы не ввели стоимость");
            }
            if (comboBoxClient.SelectedItem == null)
            {
                errors.AppendLine("Вы не выбрали клиента");
            }
            if (comboBoxMatch.SelectedItem == null)
            {
                errors.AppendLine("Вы не выбрали матч");
            }
            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }

                ticket.Client = (Client)comboBoxClient.SelectedItem;
                foreach(var match in FootballTicketOfficeEntities.getContext().Match.ToList())
                {
                if (match == (Data.Match)comboBoxMatch.SelectedItem)
                {
                    
                    ticket.MatchId = match.Id;
                    break;
                }
                    
                }
                ticket.Sector = Convert.ToInt32(comboBoxSector.SelectedItem);
                ticket.Row = Convert.ToInt32(comboBoxRow.SelectedItem);
                ticket.Site = Convert.ToInt32(comboBoxSite.SelectedItem);
                ticket.PurchaseDate = DateTime.Now;
                ticket.CashierId = Manager.loginedUser.Id;
                if (FootballTicketOfficeEntities.getContext().Ticket.Where(p => p.Site == ticket.Site && p.Row == ticket.Row && p.Sector == ticket.Sector && p.MatchId == ticket.MatchId).Count() != 0)
                {
                    MessageBox.Show("Данное место не доступно для оформления");
                return;
                }
                FootballTicketOfficeEntities.getContext().Ticket.Add(ticket);
                FootballTicketOfficeEntities.getContext().SaveChanges();
                MessageBox.Show("Билет оформлен!");
                Manager.mainFrame.GoBack();
        }
    }
}
