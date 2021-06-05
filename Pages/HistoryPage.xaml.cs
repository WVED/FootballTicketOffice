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
    /// Логика взаимодействия для HistoryPage.xaml
    /// </summary>
    public partial class HistoryPage : Page
    {
        public HistoryPage()
        {
            InitializeComponent();
            DGridHistory.ItemsSource = FootballTicketOfficeEntities.getContext().HistoryAuthorize.ToList();
        }

        private void txtBoxSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            List<HistoryAuthorize> currentHistory = FootballTicketOfficeEntities.getContext().HistoryAuthorize.ToList();
            currentHistory = currentHistory.Where(p => p.User.Login.ToLower().Contains(txtBoxSearch.Text.ToLower()) || p.Status.ToLower().Contains(txtBoxSearch.Text.ToLower())).ToList();
            DGridHistory.ItemsSource = currentHistory.ToList();
        }

        private void txtBoxSearch_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            Regex regex = new Regex("^[a-zA-Z]");
            e.Handled = regex.IsMatch(e.Text);
        }
    }
}
