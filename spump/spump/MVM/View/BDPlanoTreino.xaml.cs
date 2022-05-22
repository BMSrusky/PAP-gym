using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
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

namespace spump.MVM.View
{
    /// <summary>
    /// Lógica interna para BDPlanoTreino.xaml
    /// </summary>
    public partial class BDPlanoTreino : Window
    {
        string nome="";
        int cod = 0;
        int numero = 0;

        public BDPlanoTreino()
        {
            InitializeComponent();
            CarregaDadosGrid();
        }

        private void CarregaDadosGrid()
        {
            BD b = new BD();
            b.LigaBD();
            try
            {
                DataTable dt = new DataTable();
                string query = string.Format("SELECT * FROM exercicios;");
                MySqlDataAdapter da = new MySqlDataAdapter(query, b.con);
                da.Fill(dt);
                exercicios.ItemsSource = dt.DefaultView;// Área para fazer algo mais com a grid view...
            }
            catch
            {
                MessageBox.Show("Não foram retornados dados!", "ERRO");
            }
            b.FechaBD();
        }

        private void N1_MouseDown(object sender, MouseButtonEventArgs e)
        {
            numero = 1;
            //MessageBox.Show(numero.ToString());
        }

        private void N2_MouseDown(object sender, MouseButtonEventArgs e)
        {
            numero = 2;
            //MessageBox.Show(numero.ToString());
        }

        private void N3_MouseDown(object sender, MouseButtonEventArgs e)
        {
            numero = 3;
            //MessageBox.Show(numero.ToString());
        }

        private void N4_MouseDown(object sender, MouseButtonEventArgs e)
        {
            numero = 4;
            //MessageBox.Show(numero.ToString());
        }

        private void N5_MouseDown(object sender, MouseButtonEventArgs e)
        {
            numero = 5;
            //MessageBox.Show(numero.ToString());
        }

        private void N6_MouseDown(object sender, MouseButtonEventArgs e)
        {
            numero = 6;
            //MessageBox.Show(numero.ToString());
        }

        private void N7_MouseDown(object sender, MouseButtonEventArgs e)
        {
            numero = 7; 
            //MessageBox.Show(numero.ToString());
        }

        private void exercicios_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            try
            {
                if (exercicios.SelectedItem != null)
                {
                    DataRowView v = (DataRowView)exercicios.SelectedItem;
                    nome = v[1].ToString();
                    cod = int.Parse(v[1].ToString());



                }
            }
            catch
            {

            }
        }

        private void exercicios_SelectedCellsChanged(object sender, SelectedCellsChangedEventArgs e)
        {
            if (numero == 1)
            {
                N1.Text = nome;
            }
            else if (numero == 2)
            {
                N2.Text = nome;
            }
            else if (numero == 3)
            {
                N3.Text = nome;
            }
            else if (numero == 4)
            {
                N4.Text = nome;
            }
            else if (numero == 5)
            {
                N5.Text = nome;
            }
            else if (numero == 6)
            {
                N6.Text = nome;
            }
            else if (numero == 7)
            {
                N7.Text = nome;
            }
            else
            {
                MessageBox.Show("EScolha uma Label para poder escolher um exercicio!");
            }
        }

        string exercicio1 = "", exercicio2 = "", exercicio3 = "", exercicio4 = "", exercicio5 = "", exercicio6 = "", exercicio7 = "";
        string nomeTreino = "";
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            BD b = new BD();


            nomeTreino = planoTxt.Text;
            exercicio1 = N1.Text;
            exercicio2 = N2.Text;
            exercicio3 = N3.Text;
            exercicio4 = N4.Text;
            exercicio5 = N5.Text;
            exercicio6 = N6.Text;
            exercicio7 = N7.Text;

            try
            {
                for (int c = 1; c<=7; c++)
                {
                    b.LigaBD();



                    string query = string.Format("insert into planos values (null,'{0}','{1}');", nomeTreino, ); // o número não leva pelicas
                    MessageBox.Show(query);
                    MySqlCommand comandoMySQL = new MySqlCommand(query, b.con); //query SQL e conexão como parâmetros
                    comandoMySQL.ExecuteNonQuery();
                    b.FechaBD();
                }
                MessageBox.Show("Plano " + nomeTreino + " inserido com sucesso.", "Planos");
            }
            catch
            {
                MessageBox.Show("Operação Falhada!");
            }
            this.Close();
        }
    }
}
