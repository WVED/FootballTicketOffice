using FootballTicketOffice.Data;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
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

namespace FootballTicketOffice.Report
{
    /// <summary>
    /// Логика взаимодействия для ReportPage.xaml
    /// </summary>
    public partial class ReportPage : Page
    {
        public ReportPage()
        {
            InitializeComponent();
            DGridReport.ItemsSource = FootballTicketOfficeEntities.getContext().Ticket.ToList();
        }
        private void txtBoxSearch_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            Regex regex = new Regex("[^а-яА-Я]");
            e.Handled = regex.IsMatch(e.Text);
        }
        private void btnGenerate_Click(object sender, RoutedEventArgs e)
        {
            if (datePickerFrom.SelectedDate != null && datePickerUntill.SelectedDate != null)
            {
                if (datePickerUntill.SelectedDate > datePickerFrom.SelectedDate)
                {
                    DGridReport.ItemsSource = FootballTicketOfficeEntities.getContext().Ticket.Where(p => p.PurchaseDate > datePickerFrom.SelectedDate && p.PurchaseDate < datePickerUntill.SelectedDate).ToList();
                    if (DGridReport.Items.Count == 0)
                    { 
                        MessageBox.Show("За выбранный период нет продаж", "Информация", MessageBoxButton.OK, MessageBoxImage.Information);
                        return;
                    }
                }
                else
                {
                    MessageBox.Show("Начальная дата не можеть быть меньше конечной", "Информация", MessageBoxButton.OK, MessageBoxImage.Information);
                    return;
                }
            }  
            else
            {
                DGridReport.ItemsSource = FootballTicketOfficeEntities.getContext().Ticket.ToList();
            }
        }
        private void datePickerUntill_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            Regex regex = new Regex("[^0-9]+");
            e.Handled = regex.IsMatch(e.Text);
        }

        private void datePickerFrom_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            Regex regex = new Regex("[^0-9]+");
            e.Handled = regex.IsMatch(e.Text);
        }

        private void btnPrint_Click(object sender, RoutedEventArgs e)
        {
            System.Windows.Controls.PrintDialog Printdlg = new System.Windows.Controls.PrintDialog();
            if ((bool)Printdlg.ShowDialog().GetValueOrDefault())
            {
                Size pageSize = new Size(Printdlg.PrintableAreaWidth, Printdlg.PrintableAreaHeight);
                DGridReport.Measure(pageSize);
                DGridReport.Arrange(new Rect(0, 0, pageSize.Width, pageSize.Height));
                Printdlg.PrintVisual(DGridReport, Title);
            }
        }
    }
}
