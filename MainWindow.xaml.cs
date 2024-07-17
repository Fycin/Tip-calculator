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

namespace Tip_calculator
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private int countOrder = 0;
        public MainWindow()
        {
            InitializeComponent();
        }

        private void SumOrderText_TextChanged(object sender, TextChangedEventArgs e)
        {
            //if (SumOrderText.Text == "") SumOrderText.Text = "Введите сумму заказа";
        }

        private void Slider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            ((Slider)sender).SelectionEnd = e.NewValue;

            int conventer = Convert.ToInt32(ProcentSlider.Value);

            TipProcent.Text = conventer.ToString() + "%";
        }

        private void SumOrderText_GotFocus(object sender, RoutedEventArgs e)
        {
            if (SumOrderText.Text == "Введите сумму заказа") SumOrderText.Text = "";
        }

        private void SumOrderText_LostFocus(object sender, RoutedEventArgs e)
        {
            //if (SumOrderText.Text != "") SumOrderText.Text += " ₽";
            if (SumOrderText.Text == "") SumOrderText.Text = "Введите сумму заказа";
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (SumOrderText.Text == "Введите сумму заказа")
            {
                MessageBox.Show("Введите сумму заказа");
            }
            else
            {
                countOrder++;

                TextBlock order = new TextBlock();
                double orderSum = Convert.ToDouble(SumOrderText.Text);
                int procent = Convert.ToInt32(ProcentSlider.Value);

                Run rubles = new Run();
                rubles.Text = "₽";

                Run sumTips = new Run();
                sumTips.Text = "Сумма чаевых: ";
                Run valueSumTips = new Run();
                valueSumTips.Text = (orderSum / 100 * Convert.ToDouble(procent)).ToString();
                valueSumTips.Foreground = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#e95a5a"));

                Run ordersSum = new Run();
                ordersSum.Text = "Итого сумма заказа: ";
                Run valueOrdersSum = new Run();
                valueOrdersSum.Text = (orderSum + (orderSum / 100 * Convert.ToDouble(procent))).ToString();
                valueOrdersSum.Foreground =  new SolidColorBrush((Color)ColorConverter.ConvertFromString("#e95a5a"));

                order.Text = "№ "+Convert.ToString(countOrder);
                order.Inlines.Add(new LineBreak());
                order.Inlines.Add(sumTips.Text );
                order.Inlines.Add(valueSumTips);
                order.Inlines.Add(" "+ rubles.Text);
                order.Inlines.Add(new LineBreak());
                order.Inlines.Add(new LineBreak());
                order.Inlines.Add(ordersSum.Text);
                order.Inlines.Add(valueOrdersSum);
                order.Inlines.Add(" " + rubles.Text);

                order.FontSize = 22;
                order.Padding = new Thickness(7);


                Border border = new Border();
                border.Background = new SolidColorBrush(Color.FromRgb(231,255,116)) ;
                border.CornerRadius = new CornerRadius(5);
                border.Margin = new Thickness(22);
                border.Child = order;


                Orders.Children.Add(border);
            }
        }

        private void Rectangle_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            Close();
        }

        private void Rectangle_MouseLeftButtonDown_1(object sender, MouseButtonEventArgs e)
        {
            Close();
        }

        private void Window_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }

        

        private void SumOrderText_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (!Char.IsDigit(e.Text, 0)) e.Handled = true;
        }
    }
}
