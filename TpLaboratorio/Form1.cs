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
using TpLaboratorio.Entidades;

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
            GetExamenes();
            GetAlumnos();
            CargarEstadoAcademico();
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

            List<Materia> materias = consultasDao.GetMaterias();

            comboBox1.DataSource = materias;
            comboBox1.DisplayMember = "Nombre";
            comboBox1.ValueMember = "IdMateria";

            cboMateriasT3.DataSource = materias;
            cboMateriasT3.DisplayMember = "Nombre";
            cboMateriasT3.ValueMember = "IdMateria";
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

        private void numericUpDown1_ValueChanged(object sender, EventArgs e)
        {

            if (numericUpDown1.Value > 5)
            {
                numericUpDown1.BackColor = System.Drawing.Color.YellowGreen;
            }
            else {
                numericUpDown1.BackColor = System.Drawing.Color.Crimson;
            }
        }

        private void GetExamenes()
        {

            List<Examen> examenes = consultasDao.GetExamenes("SP_OBTENER_EXAMENES");
            cboExamenes.DataSource = examenes;
        }
        private void GetAlumnos()
        {
            List<Alumno> alumnos = consultasDao.GetAlumnos("SP_OBTENER_ALUMNOS");
            cboAlumnos.DataSource = alumnos;
            cboAlumnos.DisplayMember = "Nombre";
            cboAlumnos.ValueMember = "Legajo";
        }
        private void button1_Click(object sender, EventArgs e)
        {
            cboExamenes.SelectedIndex = -1;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            cboAlumnos.SelectedIndex = -1;
        }

        private void GetDetallesExamen() {
            dgvDetalles.DataSource = consultasDao.GetConsulta("SP_OBTENER_DETALLES_EXAMENES", new Dictionary<string, object>());
        }

        private void button4_Click(object sender, EventArgs e)
        {
            if (cboAlumnos.SelectedIndex < 0) {
                MessageBox.Show("Seleccione un alumno", "Alumno no seleccionado", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (cboExamenes.SelectedIndex < 0)
            {
                MessageBox.Show("Seleccione un examen", "Examen no seleccionado", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            int presente = 0;
            if (checkBox1.CheckState == CheckState.Checked)
            {
                presente = 1;
            }

            Dictionary<string, object> parametros = new Dictionary<string, object>();

            Examen examen = (Examen)cboExamenes.SelectedItem;
            Alumno alumno = (Alumno)cboAlumnos.SelectedItem;

            parametros.Add("@idExamen", examen.IdExamen);
            parametros.Add("@legajo", alumno.Legajo);
            parametros.Add("@presente", presente);
            parametros.Add("@nota", numericUpDown1.Value);

            try
            {
                consultasDao.InsertarDetalle("SP_INSERTAR_DETALLE_EXAMEN", parametros);
            }
            catch (Exception)
            {
                MessageBox.Show("El alumno seleccionado ya rindió ese examen", "Examen ya rendido", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }


            GetDetallesExamen();
            LimpiarTab2();
        }

        private void LimpiarTab2()
        {
            checkBox1.Checked = false;
            cboAlumnos.SelectedIndex = -1;
            cboExamenes.SelectedIndex = -1;
            numericUpDown1.Value = 1;
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox1.CheckState == CheckState.Checked) {
                numericUpDown1.Enabled = true;
            }
            else
            {
                numericUpDown1.Enabled = false;
            }
        }

        private void btnLimpiarT3_Click(object sender, EventArgs e)
        {
            LimpiarT3();
        }
        private void LimpiarT3() {
            cboEstadoAcademico.SelectedIndex = -1;
            cboMateriasT3.SelectedIndex = -1;
            dgvT3.DataSource = null;
        }

        private void btnBuscarT3_Click(object sender, EventArgs e)
        {
            Dictionary<string, object> parametros = new Dictionary<string, object>();
            if (cboEstadoAcademico.SelectedIndex < 0)
            {
                parametros.Add("@estadoAcademico", DBNull.Value);
            }
            else {
                parametros.Add("@estadoAcademico", cboEstadoAcademico.SelectedValue.ToString());
            }
            if (cboMateriasT3.SelectedIndex < 0)
            {
                parametros.Add("@idMateria", DBNull.Value);
            }
            else
            {
                parametros.Add("@idMateria", cboMateriasT3.SelectedValue);
            }
            dgvT3.DataSource = consultasDao.GetConsulta("spConsultaEstadosAcademicos", parametros);
            if (dgvT3.Rows.Count < 1 ) {
                MessageBox.Show("No se encontraron resultados", "Sin resultados", MessageBoxButtons.OK, MessageBoxIcon.Error);
                LimpiarT3();
                return;
                
            }
            
        }
        private void CargarEstadoAcademico(){
            cboEstadoAcademico.DataSource = consultasDao.GetConsulta("SP_OBTENER_ESTADOS_ACADEMICOS",new Dictionary<string, object>());
            cboEstadoAcademico.DisplayMember = "Estado";
            cboEstadoAcademico.ValueMember = "Estado";
        }

        private void button5_Click(object sender, EventArgs e)
        {
            if (cboAlumnos.SelectedIndex < 0)
            {
                MessageBox.Show("Seleccione un alumno", "Alumno no seleccionado", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            Dictionary<string, object> parametros = new Dictionary<string, object>();
            parametros.Add("@legajo", cboAlumnos.SelectedValue);
            dgvDetalles.DataSource = consultasDao.GetConsulta("SP_MATERIAS_ALUMNOS", parametros);
        }
    }
}
