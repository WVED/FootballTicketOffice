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

namespace FootballTicketOffice.Pages
{
    /// <summary>
    /// Логика взаимодействия для MatchPage.xaml
    /// </summary>
    public partial class MatchPage : Page
    {
        public MatchPage()
        {
            InitializeComponent();
        }

        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {
            Manager.mainFrame.Navigate(new AddEditMatchPage((sender as Button).DataContext as Data.Match));
        }

        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
            Manager.mainFrame.Navigate(new AddEditMatchPage(null));
        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            if (DGridMatch.SelectedItems.Count > 0)
            {
                var matchesForRemove = DGridMatch.SelectedItems.Cast<Data.Match>().ToList();
                if (MessageBox.Show($"Вы точно хотите удалить следующие {matchesForRemove.Count()} элементов?", "", MessageBoxButton.YesNo) == MessageBoxResult.Yes)
                {
                    try
                    {
                        FootballTicketOfficeEntities.getContext().Match.RemoveRange(matchesForRemove);
                        FootballTicketOfficeEntities.getContext().SaveChanges();
                        MessageBox.Show("Данные удалены!");
                        DGridMatch.ItemsSource = FootballTicketOfficeEntities.getContext().Match.ToList();
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
            if(Visibility == Visibility.Visible)
            {
                DGridMatch.ItemsSource = FootballTicketOfficeEntities.getContext().Match.ToList();
            }
        }

        private void txtBoxSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            List<Data.Match> currentMatch = FootballTicketOfficeEntities.getContext().Match.ToList();
            currentMatch = currentMatch.Where(p => p.Team.Title.ToLower().Contains(txtBoxSearch.Text.ToLower()) || p.Team1.Title.ToLower().Contains(txtBoxSearch.Text.ToLower())).ToList();
            DGridMatch.ItemsSource = currentMatch.ToList();
        }

        private void txtBoxSearch_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            Regex regex = new Regex("[^а-яА-Я]");
            e.Handled = regex.IsMatch(e.Text);
        }
    }
}
