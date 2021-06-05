using FootballTicketOffice.Data;
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

namespace FootballTicketOffice
{
    /// <summary>
    /// Логика взаимодействия для ClientEditPage.xaml
    /// </summary>
    public partial class ClientEditPage : Page
    {
        private static Client _currentClientEdit = new Client();
        public ClientEditPage(Client selectedClient)
        {
            InitializeComponent();
            if (selectedClient != null)
            _currentClientEdit = selectedClient;
            DataContext = _currentClientEdit;
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();
            if (txtBoxLastName.Text == "")
            {
                errors.AppendLine("Вы не ввели имя");
            }
            if (txtBoxFirstName.Text == "")
            {
                errors.AppendLine("Вы не ввели фамилию");
            }
            if (maskedBoxPhone.Text == "")
            {
                errors.AppendLine("Вы не ввели номер телефона");
            }
            if (txtBoxEmail.Text == "")
            {
                errors.AppendLine("Вы не ввели электронную почту");
            }
            if (datePick.SelectedDate == null)
            {
                errors.AppendLine("Вы не выбрали дату рождения");
            }
            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }
            try
            {
                _currentClientEdit.Birthday = (DateTime)datePick.SelectedDate;
                FootballTicketOfficeEntities.getContext().Client.Add(_currentClientEdit);
                FootballTicketOfficeEntities.getContext().SaveChanges();
                MessageBox.Show("Информация обновлена!");
                Manager.mainFrame.GoBack();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }
        private void maskedBoxPhone_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            Regex regex = new Regex("[^0-9]+");
            e.Handled = regex.IsMatch(e.Text);
        }
    }
}
