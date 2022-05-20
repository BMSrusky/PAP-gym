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
        string horaA="";
        int count = 0, c=0, c2=0, help=0 ;
        int[] horasValidas = new int[1000];

        int combos = 0;

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

            }
        }

        private void DataTxt_SelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
            if (But == 1)
            {
                Data = dataTxt.ToString();
                Data = Data.Substring(6,4) + "-"+Data.Substring(3,2)+"-"+ Data.Substring(0,2);
                MessageBox.Show(Data);
                CarregaComboHoras();
            }
        }

        private void closeWindow_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void butConfirm_Click(object sender, RoutedEventArgs e)
        {
            //BD b = new BD();
            //b.LigaBD();

            //if (But == 1)
            //{
            //    try
            //    {
            //        string query = string.Format("insert into aulagrupo values (null,'{0}','{1}','{2}','{3}');", Nome, DataN, Email, Contacto); // o número não leva pelicas
            //        MessageBox.Show(query);
            //        MySqlCommand comandoMySQL = new MySqlCommand(query, b.con); //query SQL e conexão como parâmetros
            //        comandoMySQL.ExecuteNonQuery();
            //        MessageBox.Show("Cliente " + Nome + " inserido com sucesso.");
            //        b.FechaBD();
            //    }
            //    catch
            //    {
            //        MessageBox.Show("Operação Falhada!");
            //    }
            //    this.Close();
            //}
            //b.FechaBD();
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

        private void CarregaComboHoras()
        {
            BD b = new BD();
            b.LigaBD();
            MySqlDataReader reader = null;
            horaCombo.Items.Clear();
            horaCombo.IsEditable = false; //Evitar edições não autorizadas na combo box
            try
            {
                String query = @"SELECT distinct hora from aulagrupo where datas = '"+ Data +"' order by hora asc;";
                MessageBox.Show(query);
                MySqlCommand cmd = new MySqlCommand(query, b.con);
                reader = cmd.ExecuteReader(); //executa o reader


                while (reader.Read())
                {
                    horaA = reader[0].ToString().Substring(0,2);

                    horasValidas[count] = int.Parse(horaA);
                    //MessageBox.Show(horasValidas[count].ToString());

                    count++;
                }

                MessageBox.Show(count.ToString());

                for (c=10; c <= 21; c++)
                {
                    help = 0;
                    //MessageBox.Show(c.ToString());
                    
                    for (c2 = 0; c2 < count; c2++)
                    {
                        if(c != horasValidas[c2])
                        {
                            MessageBox.Show(c2.ToString());
                            help = 1;
                            //MessageBox.Show(help.ToString());

                            if (help == 1)
                            {
                                horaCombo.Items.Add(c + ":00");
                            }
                        }
                        else
                        {
                            MessageBox.Show(horasValidas[c2].ToString());
                        }
                    }
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
