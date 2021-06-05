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
using System.Windows.Shapes;
using FootballTicketOffice.Data;

namespace FootballTicketOffice.Windows
{
    /// <summary>
    /// Логика взаимодействия для ChangePasswordWindow.xaml
    /// </summary>
    public partial class ChangePasswordWindow : Window
    {
        private User currentUser;
        public ChangePasswordWindow()
        {
            InitializeComponent();
            currentUser = Manager.loginedUser;
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder stringBuilder = new StringBuilder();
            if (String.IsNullOrWhiteSpace(pswBoxNewPass.Password))
                stringBuilder.AppendLine("Текстовое поле нового пароля не может быть пустым");
            if(String.IsNullOrWhiteSpace(pswBoxNewPassCommit.Password))
                stringBuilder.AppendLine("Текстовое поле подтверждения нового пароля не может быть пустым");
            if(String.IsNullOrWhiteSpace(pswBoxOldPass.Password))
                stringBuilder.AppendLine("Текстовое поле старого пароля не может быть пустым");
            if (Manager.loginedUser.Password != pswBoxOldPass.Password)
                stringBuilder.AppendLine("Старый пароль не совпадает");
            if (pswBoxNewPass.Password != pswBoxNewPassCommit.Password)
                stringBuilder.AppendLine("Новые пароли не совпадают");
            if (pswBoxNewPass.Password == Manager.loginedUser.Password && pswBoxNewPassCommit.Password == Manager.loginedUser.Password)
                stringBuilder.AppendLine("Новый пароль не может совпадать со старым");
            if(!String.IsNullOrWhiteSpace(stringBuilder.ToString()))
            {
                
                MessageBox.Show(stringBuilder.ToString(), "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            else
            {

                currentUser.Password = pswBoxNewPass.Password;
                FootballTicketOfficeEntities.getContext().SaveChanges();
                MessageBox.Show("Пароль успешно сменён", "Информация", MessageBoxButton.OK, MessageBoxImage.Asterisk);
                Authorize authorize = new Authorize();
                authorize.Show();
                Manager.baseWindow.Close();
                this.Close();
            }
        }
    }
}
