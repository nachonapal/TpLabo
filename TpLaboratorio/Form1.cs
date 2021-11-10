using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using TpLaboratorio.DAO;

namespace TpLaboratorio
{
    public partial class Inicio : Form
    {
        ConsultasDao consultasDao;
        public Inicio()
        {
            InitializeComponent();
            consultasDao = new ConsultasDao();
        }
        private void rbC1_CheckedChanged_1(object sender, EventArgs e)
        {
            tabControl1.SelectTab(0);
        }

        private void rbC2_CheckedChanged(object sender, EventArgs e)
        {
            tabControl1.SelectTab(1);
        }

        private void rbC3_CheckedChanged(object sender, EventArgs e)
        {
            tabControl1.SelectTab(2);
        }

        private void rbC4_CheckedChanged(object sender, EventArgs e)
        {
            tabControl1.SelectTab(3);
        }

        private void rbC5_CheckedChanged(object sender, EventArgs e)
        {
            tabControl1.SelectTab(4);
        }

        private void Inicio_Load(object sender, EventArgs e)
        {
            tabControl1.Appearance = TabAppearance.FlatButtons;
            tabControl1.ItemSize = new Size(0, 1);
            tabControl1.SizeMode = TabSizeMode.Fixed;
            CargarMaterias();
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {

            Dictionary<string, object> parametros = new Dictionary<string, object>();

            if (String.IsNullOrEmpty(txtAnioInscripcion.Text))
            {
                parametros.Add("@anio", DBNull.Value);
            }
            else {
                try
                {
                    int anioInscripcion = Convert.ToInt32(txtAnioInscripcion.Text);
                    if (anioInscripcion > 3000 || anioInscripcion < 1950) {
                        MessageBox.Show("Ingrese un año válido", "Año incorrecto", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        txtAnioInscripcion.Text = "";
                        dataGridView1.DataSource = null;
                        return;
                    }
                    parametros.Add("@anio", anioInscripcion);
                }
                catch (Exception)
                {
                    MessageBox.Show("Ingrese un año válido", "Año incorrecto", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtAnioInscripcion.Focus();
                    dataGridView1.DataSource = null;
                    return;
                }
            }
            if (comboBox1.SelectedIndex < 0)
            {
                parametros.Add("@idMateria", DBNull.Value);
            }
            else {
                parametros.Add("@idMateria", comboBox1.SelectedValue);
            }
            dataGridView1.DataSource = consultasDao.GetConsulta("spConsultarAlumnosMateria", parametros);
            parametros.Clear();
        }

        private void btnlLimpiar_Click(object sender, EventArgs e)
        {
            comboBox1.SelectedIndex = -1;
        }
        private void CargarMaterias() {
            comboBox1.DataSource = consultasDao.GetMaterias();
            comboBox1.DisplayMember = "Nombre";
            comboBox1.ValueMember = "IdMateria";
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Dictionary<string, object> parametros = new Dictionary<string, object>();

            if (String.IsNullOrEmpty(txtAnio.Text))
            {
                MessageBox.Show("Ingrese un año", "Año nulo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtAnio.Text = "";
                dataGridView2.DataSource = null;
                lblCantReg.Text = "Cantidad de Registros: 0";
                return;
            }
            else
            {
                try
                {
                    int anio = Convert.ToInt32(txtAnio.Text);
                    if (anio > 3000 || anio < 1950)
                    {
                        MessageBox.Show("Ingrese un año válido", "Año incorrecto", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        txtAnio.Text = "";
                        dataGridView2.DataSource = null;
                        lblCantReg.Text = "Cantidad de Registros: 0";
                        return;
                    }
                    parametros.Add("@anio", anio);
                }
                catch (Exception)
                {
                    MessageBox.Show("Ingrese un año válido", "Año incorrecto", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtAnio.Focus();
                    dataGridView2.DataSource = null;
                    lblCantReg.Text = "Cantidad de Registros: 0";
                    return;
                }
                dataGridView2.DataSource = consultasDao.GetConsulta("spConsultaExamenesNoAprobOAusentes", parametros);
                parametros.Clear();
                lblCantReg.Text = $"Cantidad de Registros: {dataGridView2.Rows.Count}";

            }
        }
    }
}
