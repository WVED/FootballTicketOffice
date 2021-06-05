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
    /// Логика взаимодействия для TeamPage.xaml
    /// </summary>
    public partial class TeamPage : Page
    {
        public TeamPage()
        {
            InitializeComponent();
            DGridTeam.ItemsSource = FootballTicketOfficeEntities.getContext().Team.ToList();
        }

        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
            AddEditTeamAddWindow team = new AddEditTeamAddWindow(this, null);
            team.Show();
        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            if (DGridTeam.SelectedItems.Count > 0)
            {
                var usersForRemove = DGridTeam.SelectedItems.Cast<User>().ToList();
                if (MessageBox.Show($"Вы точно хотите удалить следующие {usersForRemove.Count()} элементов?", "", MessageBoxButton.YesNo) == MessageBoxResult.Yes)
                {
                    try
                    {
                        FootballTicketOfficeEntities.getContext().User.RemoveRange(usersForRemove);
                        FootballTicketOfficeEntities.getContext().SaveChanges();
                        MessageBox.Show("Данные удалены!");
                        DGridTeam.ItemsSource = FootballTicketOfficeEntities.getContext().User.ToList();
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

        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {
            AddEditTeamAddWindow team = new AddEditTeamAddWindow(this,(sender as Button).DataContext as Team);
            team.ShowDialog();
        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
                FootballTicketOfficeEntities.getContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
                DGridTeam.ItemsSource = FootballTicketOfficeEntities.getContext().Team.ToList();
            }
        }
                  
        private void txtBoxSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            List<Team> currentTeam = FootballTicketOfficeEntities.getContext().Team.ToList();
            currentTeam = currentTeam.Where(p => p.Title.ToLower().Contains(txtBoxSearch.Text.ToLower())).ToList();
            DGridTeam.ItemsSource = currentTeam.ToList();
        }

        private void txtBoxSearch_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            Regex regex = new Regex("[^а-яА-Я]");
            e.Handled = regex.IsMatch(e.Text);
        }
    }
}
