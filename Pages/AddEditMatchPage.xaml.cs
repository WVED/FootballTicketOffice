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

namespace FootballTicketOffice.Pages
{
    /// <summary>
    /// Логика взаимодействия для AddEditMatchPage.xaml
    /// </summary>
    public partial class AddEditMatchPage : Page
    {
        private Match currentMatch;
        public AddEditMatchPage(Match selectedMatch)
        {
            InitializeComponent();
            comboBoxFirstTeam.ItemsSource = FootballTicketOfficeEntities.getContext().Team.ToList();
            comboBoxSecondTeam.ItemsSource = FootballTicketOfficeEntities.getContext().Team.ToList();
            datePickerMatch.SelectedDate = DateTime.Now;
            currentMatch = new Match();
            if (selectedMatch != null)
            {
                currentMatch = selectedMatch;
                datePickerMatch.SelectedDate = currentMatch.Date;
                comboBoxFirstTeam.SelectedItem = currentMatch.Team;
                comboBoxSecondTeam.SelectedItem = currentMatch.Team1;
            }
            DataContext = currentMatch;  
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder stringBuilder = new StringBuilder();
            if (comboBoxFirstTeam.SelectedItem == comboBoxSecondTeam.SelectedItem)
            {
               stringBuilder.AppendLine("Команды не могут совпадать");
            }
            if (comboBoxFirstTeam.SelectedItem == null)
                stringBuilder.AppendLine("Вы не выбрали первую команду");
            if (comboBoxSecondTeam.SelectedItem == null)
                stringBuilder.AppendLine("Вы не выбрали вторую команду");
            if (datePickerMatch.SelectedDate == null)
                stringBuilder.AppendLine("Вы не выбрали дату матча");
            if (stringBuilder.Length != 0)
            {
                MessageBox.Show(stringBuilder.ToString(), "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            else
            {
                currentMatch.Date = (DateTime)datePickerMatch.SelectedDate;
                Team firstTeam = (Team)comboBoxFirstTeam.SelectedItem;
                Team secondTeam = (Team)comboBoxSecondTeam.SelectedItem;
                currentMatch.FirstTeamId = firstTeam.Id;
                currentMatch.SecondTeamId = secondTeam.Id;
                currentMatch.Date = (DateTime)datePickerMatch.SelectedDate;
                if (FootballTicketOfficeEntities.getContext().Match.Where(p=>p.FirstTeamId == currentMatch.FirstTeamId && p.SecondTeamId == currentMatch.SecondTeamId && p.Date == currentMatch.Date).Count() != 0 || FootballTicketOfficeEntities.getContext().Match.Where(p => p.FirstTeamId == currentMatch.SecondTeamId && p.SecondTeamId == currentMatch.FirstTeamId && p.Date == currentMatch.Date).Count() != 0) 
                {
                    MessageBox.Show("Такой матч уже сущевствует!", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }
                if (currentMatch.Id == 0)
                    FootballTicketOfficeEntities.getContext().Match.Add(currentMatch);
                FootballTicketOfficeEntities.getContext().SaveChanges();
                MessageBox.Show("Данные успешно сохранены!", "Информация", MessageBoxButton.OK, MessageBoxImage.Information);
                Manager.mainFrame.GoBack();
            }
        }
    }
}
