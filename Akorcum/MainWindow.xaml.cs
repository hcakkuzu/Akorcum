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
using MahApps.Metro.Controls;
using System.Data.OleDb;

namespace Akorcum
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : MetroWindow
    {
        public MainWindow()
        {
            InitializeComponent();
            Uri iconUri = new Uri("pack://application:,,,/icon.ico", UriKind.RelativeOrAbsolute);
            this.Icon = BitmapFrame.Create(iconUri);
        }

        public static int aktifSarkiID = 0;

        void sanatciButton_Click(object sender, RoutedEventArgs e)
        {
            tabControl.SelectedIndex = 1;
            tümSarkilariYükle((sender as Button).Content.ToString().ToLower()); 

        }

        void sarkiButton_Click(object sender, RoutedEventArgs e)
        {
           // MessageBox.Show(string.Format("{0} Şarkısı ve ID nosu = {1}", (sender as Button).Content.ToString(), (sender as Button).Tag.ToString()));
            aktifSarkiID = int.Parse((sender as Button).Tag.ToString());
            akorBaslik.Header = (sender as Button).Content.ToString();
            AKOR.Text = akorGetir(int.Parse((sender as Button).Tag.ToString()));
            tabControl.SelectedIndex = 2;
        }

        public string akorGetir(int id)
        {
            OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.Oledb.4.0;Data Source=data.mdb");
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = conn;
            cmd.CommandText = "SELECT sarki_akor FROM sarkilar WHERE sarki_ID=@id";
            cmd.Parameters.AddWithValue("@id",id);
            conn.Open();
            OleDbDataReader oku = cmd.ExecuteReader();
            oku.Read();
            string akr = oku.GetValue(0).ToString();
            conn.Close();
            return akr;
        }

        public void akorSil(int id)
        {
            OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.Oledb.4.0;Data Source=data.mdb");
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = conn;
            cmd.CommandText = "DELETE FROM sarkilar WHERE sarki_ID=@id";
            cmd.Parameters.AddWithValue("@id", id);
            conn.Open();
            cmd.ExecuteNonQuery();
            MessageBox.Show("Başarıyla Silindi!");
            conn.Close();
            temizle();
            sanatciYükle();
            tümSarkilariYükle("");
        }

        public void sanatciYükle()
        {
            this.sanatciGrid.Children.Clear();
            OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.Oledb.4.0;Data Source=data.mdb");
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = conn;
            cmd.CommandText = "SELECT DISTINCT sanatci_isim FROM sarkilar ORDER BY sanatci_isim";
            conn.Open();
            OleDbDataReader oku = cmd.ExecuteReader();
            Button button;
            while (oku.Read())
            {
                sanatciCombo.Items.Add(oku.GetValue(0).ToString());
                button = new Button()
                {
                    Content = oku.GetValue(0).ToString(),
                };
                button.Padding = new System.Windows.Thickness(8);
                button.HorizontalAlignment = HorizontalAlignment.Left; //
                button.Margin = new System.Windows.Thickness(5);
                button.FontSize = 14;
                button.Click += new RoutedEventHandler(sanatciButton_Click);
                this.sanatciGrid.Children.Add(button);
            }
            conn.Close();
        }

        public void tümSarkilariYükle(string x) 
        {
            this.sarkiGrid.Children.Clear();
            //tüm şarkılar
            OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.Oledb.4.0;Data Source=data.mdb");
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = conn;
            if (x == null || x == "")
            {

                cmd.CommandText = "SELECT sarki_ID,sanatci_isim,sarki_isim,sarki_akor FROM sarkilar ORDER BY sarki_isim";
            }
            else
            {

                cmd.CommandText = "SELECT sarki_ID,sanatci_isim,sarki_isim,sarki_akor FROM sarkilar WHERE sanatci_isim=@isim ORDER BY sarki_isim";
                cmd.Parameters.AddWithValue("@isim", x.ToString());
            }
            conn.Open();
            OleDbDataReader oku = cmd.ExecuteReader();
            Button button;
            while (oku.Read())
            {
                button = new Button()
                {
                    Content = oku.GetValue(1).ToString() + " - " + oku.GetValue(2).ToString(),
                    Tag = oku.GetValue(0)
                };
                button.Padding = new System.Windows.Thickness(8);
               // button.Margin = new System.Windows.Thickness(25,0,25,0);
                button.HorizontalAlignment = HorizontalAlignment.Left; //
                button.FontSize = 14;
                button.Click += new RoutedEventHandler(sarkiButton_Click);
                this.sarkiGrid.Children.Add(button);
            }
            conn.Close();
        }

        public void temizle()
        {
            sarkiTxt.Clear();
            akorTxt.Clear();
            sanatciCombo.Items.Clear();
            sanatciCombo.Text = "";
            AKOR.Text = "Akorları Burada Gözüksün";
            akorBaslik.Header = "Bir Şarkı Seçin";
        }

        private void metroWindow_Loaded(object sender, RoutedEventArgs e)
        {
            sanatciYükle();
            tümSarkilariYükle("");
        }

        private void ekleBtn_Click(object sender, RoutedEventArgs e)
        {
            OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.Oledb.4.0;Data Source=data.mdb");
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = conn;
            cmd.CommandText = "INSERT INTO sarkilar(sanatci_isim,sarki_isim,sarki_akor) VALUES(@sanatci,@sarki,@akor)";
            cmd.Parameters.AddWithValue("@sanatci",sanatciCombo.Text.ToLower());
            cmd.Parameters.AddWithValue("@sarki", sarkiTxt.Text.ToLower());
            cmd.Parameters.AddWithValue("@akor", akorTxt.Text);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            MessageBox.Show("Başarıyla Eklendi");
            temizle();
            sanatciYükle();
            tümSarkilariYükle("");
        }

        private void sifirlaBtn_Click(object sender, RoutedEventArgs e)
        {
            temizle();
            sanatciYükle();
            tümSarkilariYükle("");
        }

        private void silBtn_Click(object sender, RoutedEventArgs e)
        {
            akorSil(aktifSarkiID);
        }

    }
}
