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
using System.Windows.Shapes;
using FootballTicketOffice.Data;

namespace FootballTicketOffice
{
    /// <summary>
    /// Логика взаимодействия для TeamAddWindow.xaml
    /// </summary>
    public partial class AddEditTeamAddWindow : Window
    {
        private TeamPage parentPage;
        private Team currentTeam;
        public AddEditTeamAddWindow(TeamPage team, Team selectedTeam)
        {
            InitializeComponent();
            currentTeam = new Team();
            if (selectedTeam != null)
                currentTeam = selectedTeam;
            DataContext = currentTeam;
            parentPage = team;
        }

        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
            if(!String.IsNullOrWhiteSpace(txtBoxTeam.Text))
            {
                if(FootballTicketOfficeEntities.getContext().Team.Where(p=>p.Title == txtBoxTeam.Text).Count() == 0)
                {
                    if (currentTeam.Id == 0)
                    {
                        FootballTicketOfficeEntities.getContext().Team.Add(currentTeam);
                    }
                    FootballTicketOfficeEntities.getContext().SaveChanges();
                    MessageBox.Show("Данные успешно сохранены!", "Информация", MessageBoxButton.OK, MessageBoxImage.Information);
                    parentPage.DGridTeam.ItemsSource = FootballTicketOfficeEntities.getContext().Team.ToList();
                    this.Close();
                }
                else
                {
                    MessageBox.Show("Команда с таким именем уже существует!", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
            else
            {
                MessageBox.Show("Название команды не может быть пустым!", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void txtBoxTeam_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            Regex regex = new Regex("[^а-яА-Я]");
            e.Handled = regex.IsMatch(e.Text);
        }
    }
}
