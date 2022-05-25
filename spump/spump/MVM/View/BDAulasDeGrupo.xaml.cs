using MySql.Data.MySqlClient;
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

namespace spump.MVM.View
{
    /// <summary>
    /// Interaction logic for BDAulasDeGrupo.xaml
    /// </summary>
    public partial class BDAulasDeGrupo : Window
    {
        string Hora, Data, Sala, Professor, Modalidade;
        int But, CodA, CodS, CodP, CodM;


        public BDAulasDeGrupo(int codA, string datas, string hora, int numeroSala, int codP, int codM, int buT)
        {
            InitializeComponent();

            CarregaComboSala();
            CarregaComboProfessor();
            CarregaComboModalidades();



            CodA = codA;
            Data = datas;
            Hora = hora;
            CodS = numeroSala;
            CodP = codP;
            CodM = codM;
            But = buT;





            if (But == 2)
            {
                Sala = string.Format("SELECT nome from salas where NumeroSala='{0}'", CodS);

                BD b = new BD();
                b.LigaBD();
                MySqlDataReader reader = null;

                MySqlCommand cmd = new MySqlCommand(Sala, b.con);
                reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Sala = reader[0].ToString();
                    //MessageBox.Show(Sala);
                }
                b.FechaBD();

                Professor = string.Format("SELECT nome from professores where CodP='{0}'", CodP);

                b.LigaBD();

                MySqlCommand cmd2 = new MySqlCommand(Professor, b.con);
                reader = cmd2.ExecuteReader();

                while (reader.Read())
                {
                    Professor = reader[0].ToString();
                    //MessageBox.Show(Professor);
                }
                b.FechaBD();

                Modalidade = string.Format("SELECT nome from modalidades where CodM='{0}'", CodM);

                b.LigaBD();

                MySqlCommand cmd3 = new MySqlCommand(Modalidade, b.con);
                reader = cmd3.ExecuteReader();

                while (reader.Read())
                {
                    Modalidade = reader[0].ToString();
                    //MessageBox.Show(Modalidade);
                }
                b.FechaBD();

                dataTxt.Text = Data;
                horaCombo.Text = Hora;
                salaCombo.Text = Sala;
                professorCombo.Text = Professor;
                modalidadeCombo.Text = Modalidade;
            }
        }

        private void DataTxt_SelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
            string dataA = dataTxt.SelectedDate.Value.ToString("yyyy-MM-dd");
            string query = string.Format("SELECT count(hora), hora from aulagrupo where datas='{0}' group by hora", dataA);
            //t1.Text = query;
            List<int> listaHoras = new List<int>();
            int numOcupadas = 0;
            int i = 0, full = 0;

            try
            {
                horaCombo.Items.Clear();
                horaCombo.SelectedIndex = -1;

                BD b = new BD();
                b.LigaBD();
                MySqlDataReader reader = null;

                MySqlCommand cmd = new MySqlCommand(query, b.con);
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    numOcupadas = Convert.ToInt32(reader[0].ToString());
                    if (numOcupadas == 4)
                    {
                        listaHoras.Add(int.Parse(reader[1].ToString().Substring(0, 2)));
                    }
                }

                for (i = 10; i < 21; i++)
                {
                    full = 0;
                    foreach (int h in listaHoras)
                    {
                        if (i == h)
                        {
                            full = 1;
                        }
                    }
                    if (full == 0)
                    {
                        horaCombo.Items.Add(i.ToString() + ":00");
                    }
                }

            }
            catch
            {

            }
        }

        private void closeWindow_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void butConfirm_Click(object sender, RoutedEventArgs e)
        {
            BD b = new BD();


            if (But == 1)
            {
                //try
                //{
                //    b.LigaBD();
                //    string query = string.Format("insert into aulagrupo values (null,'{0}','{1}','{2}','{3}');", Nome, DataN, Email, Contacto); // o número não leva pelicas
                //    MessageBox.Show(query);
                //    MySqlCommand comandoMySQL = new MySqlCommand(query, b.con); //query SQL e conexão como parâmetros
                //    comandoMySQL.ExecuteNonQuery();
                //    MessageBox.Show("Cliente " + Nome + " inserido com sucesso.");
                //    b.FechaBD();
                //}
                //catch
                //{
                //    MessageBox.Show("Operação Falhada!");
                //}
                //this.Close();
            }
            else if(But == 2)
            {
                //editar
            }
            else
            {
                //reserva
            }
        }

        private void CarregaComboSala()
        {
            BD b = new BD();
            b.LigaBD();
            MySqlDataReader reader = null;
            salaCombo.Items.Clear();
            salaCombo.IsEditable = false; //Evitar edições não autorizadas na combo box
            try
            {
                String query = @"SELECT * from Salas;";
                MySqlCommand cmd = new MySqlCommand(query, b.con);
                reader = cmd.ExecuteReader(); //executa o reader
                while (reader.Read())
                {
                    salaCombo.Items.Add(reader[1]); //Cada item pode ser composto por um ou mais campos 
                }
            }
            catch
            {
                MessageBox.Show("Algo não correu bem!");
            }
            b.FechaBD();
        }  

        private void CarregaComboProfessor()
        {
            BD b = new BD();
            b.LigaBD();
            MySqlDataReader reader = null;
            professorCombo.Items.Clear();
            professorCombo.IsEditable = false; //Evitar edições não autorizadas na combo box
            try
            {
                String query = @"SELECT * from professores;";
                MySqlCommand cmd = new MySqlCommand(query, b.con);
                reader = cmd.ExecuteReader(); //executa o reader
                while (reader.Read())
                {
                    professorCombo.Items.Add(reader[1]); //Cada item pode ser composto por um ou mais campos 
                }
            }
            catch
            {
                MessageBox.Show("Algo não correu bem!");
            }
            b.FechaBD();
        }

        private void CarregaComboModalidades()
        {
            BD b = new BD();
            b.LigaBD();
            MySqlDataReader reader = null;
            modalidadeCombo.Items.Clear();
            modalidadeCombo.IsEditable = false; //Evitar edições não autorizadas na combo box
            try
            {
                String query = @"SELECT * from modalidades;";
                MySqlCommand cmd = new MySqlCommand(query, b.con);
                reader = cmd.ExecuteReader(); //executa o reader
                while (reader.Read())
                {
                    modalidadeCombo.Items.Add(reader[1]); //Cada item pode ser composto por um ou mais campos 
                }
            }
            catch
            {
                MessageBox.Show("Algo não correu bem!");
            }
            b.FechaBD();
        }
    }
}
