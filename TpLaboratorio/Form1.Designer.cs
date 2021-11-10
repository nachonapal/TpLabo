
namespace TpLaboratorio
{
    partial class Inicio
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.panel1 = new System.Windows.Forms.Panel();
            this.rbC5 = new System.Windows.Forms.RadioButton();
            this.rbC4 = new System.Windows.Forms.RadioButton();
            this.rbC3 = new System.Windows.Forms.RadioButton();
            this.rbC2 = new System.Windows.Forms.RadioButton();
            this.rbC1 = new System.Windows.Forms.RadioButton();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.label1 = new System.Windows.Forms.Label();
            this.btnBuscar = new System.Windows.Forms.Button();
            this.lblAnio = new System.Windows.Forms.Label();
            this.lblMaterias = new System.Windows.Forms.Label();
            this.txtAnioInscripcion = new System.Windows.Forms.TextBox();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.tabPage3 = new System.Windows.Forms.TabPage();
            this.tabPage4 = new System.Windows.Forms.TabPage();
            this.tabPage5 = new System.Windows.Forms.TabPage();
            this.btnlLimpiar = new System.Windows.Forms.Button();
            this.panel1.SuspendLayout();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.rbC5);
            this.panel1.Controls.Add(this.rbC4);
            this.panel1.Controls.Add(this.rbC3);
            this.panel1.Controls.Add(this.rbC2);
            this.panel1.Controls.Add(this.rbC1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Left;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(139, 483);
            this.panel1.TabIndex = 0;
            // 
            // rbC5
            // 
            this.rbC5.Appearance = System.Windows.Forms.Appearance.Button;
            this.rbC5.BackColor = System.Drawing.Color.LightCyan;
            this.rbC5.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.rbC5.Location = new System.Drawing.Point(1, 386);
            this.rbC5.Name = "rbC5";
            this.rbC5.Size = new System.Drawing.Size(136, 100);
            this.rbC5.TabIndex = 13;
            this.rbC5.Text = "Consulta 5";
            this.rbC5.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.rbC5.UseVisualStyleBackColor = false;
            this.rbC5.CheckedChanged += new System.EventHandler(this.rbC5_CheckedChanged);
            // 
            // rbC4
            // 
            this.rbC4.Appearance = System.Windows.Forms.Appearance.Button;
            this.rbC4.BackColor = System.Drawing.Color.LightCyan;
            this.rbC4.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.rbC4.Location = new System.Drawing.Point(1, 290);
            this.rbC4.Name = "rbC4";
            this.rbC4.Size = new System.Drawing.Size(136, 100);
            this.rbC4.TabIndex = 12;
            this.rbC4.Text = "Consulta 4";
            this.rbC4.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.rbC4.UseVisualStyleBackColor = false;
            this.rbC4.CheckedChanged += new System.EventHandler(this.rbC4_CheckedChanged);
            // 
            // rbC3
            // 
            this.rbC3.Appearance = System.Windows.Forms.Appearance.Button;
            this.rbC3.BackColor = System.Drawing.Color.LightCyan;
            this.rbC3.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.rbC3.Location = new System.Drawing.Point(1, 194);
            this.rbC3.Name = "rbC3";
            this.rbC3.Size = new System.Drawing.Size(136, 102);
            this.rbC3.TabIndex = 11;
            this.rbC3.Text = "Consulta 3";
            this.rbC3.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.rbC3.UseVisualStyleBackColor = false;
            this.rbC3.CheckedChanged += new System.EventHandler(this.rbC3_CheckedChanged);
            // 
            // rbC2
            // 
            this.rbC2.Appearance = System.Windows.Forms.Appearance.Button;
            this.rbC2.BackColor = System.Drawing.Color.LightCyan;
            this.rbC2.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.rbC2.Location = new System.Drawing.Point(1, 97);
            this.rbC2.Name = "rbC2";
            this.rbC2.Size = new System.Drawing.Size(136, 102);
            this.rbC2.TabIndex = 10;
            this.rbC2.Text = "Consulta 2";
            this.rbC2.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.rbC2.UseVisualStyleBackColor = false;
            this.rbC2.CheckedChanged += new System.EventHandler(this.rbC2_CheckedChanged);
            // 
            // rbC1
            // 
            this.rbC1.Appearance = System.Windows.Forms.Appearance.Button;
            this.rbC1.BackColor = System.Drawing.Color.LightCyan;
            this.rbC1.Checked = true;
            this.rbC1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.rbC1.Location = new System.Drawing.Point(1, 0);
            this.rbC1.Name = "rbC1";
            this.rbC1.Size = new System.Drawing.Size(136, 102);
            this.rbC1.TabIndex = 9;
            this.rbC1.TabStop = true;
            this.rbC1.Text = "Consulta 1";
            this.rbC1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.rbC1.UseVisualStyleBackColor = false;
            this.rbC1.CheckedChanged += new System.EventHandler(this.rbC1_CheckedChanged_1);
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Controls.Add(this.tabPage3);
            this.tabControl1.Controls.Add(this.tabPage4);
            this.tabControl1.Controls.Add(this.tabPage5);
            this.tabControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl1.Location = new System.Drawing.Point(139, 0);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(661, 483);
            this.tabControl1.TabIndex = 1;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.btnlLimpiar);
            this.tabPage1.Controls.Add(this.label1);
            this.tabPage1.Controls.Add(this.btnBuscar);
            this.tabPage1.Controls.Add(this.lblAnio);
            this.tabPage1.Controls.Add(this.lblMaterias);
            this.tabPage1.Controls.Add(this.txtAnioInscripcion);
            this.tabPage1.Controls.Add(this.comboBox1);
            this.tabPage1.Controls.Add(this.dataGridView1);
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(653, 457);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "tabPage1";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Franklin Gothic Medium", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(150, 21);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(391, 17);
            this.label1.TabIndex = 6;
            this.label1.Text = "Alumnos inscriptos en cada materia filtrando materia y año";
            // 
            // btnBuscar
            // 
            this.btnBuscar.Location = new System.Drawing.Point(304, 72);
            this.btnBuscar.Name = "btnBuscar";
            this.btnBuscar.Size = new System.Drawing.Size(75, 23);
            this.btnBuscar.TabIndex = 5;
            this.btnBuscar.Text = "Buscar";
            this.btnBuscar.UseVisualStyleBackColor = true;
            this.btnBuscar.Click += new System.EventHandler(this.btnBuscar_Click);
            // 
            // lblAnio
            // 
            this.lblAnio.AutoSize = true;
            this.lblAnio.Font = new System.Drawing.Font("Franklin Gothic Medium", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblAnio.Location = new System.Drawing.Point(444, 54);
            this.lblAnio.Name = "lblAnio";
            this.lblAnio.Size = new System.Drawing.Size(127, 17);
            this.lblAnio.TabIndex = 4;
            this.lblAnio.Text = "Año de Inscripcion";
            // 
            // lblMaterias
            // 
            this.lblMaterias.AutoSize = true;
            this.lblMaterias.Font = new System.Drawing.Font("Franklin Gothic Medium", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMaterias.Location = new System.Drawing.Point(150, 54);
            this.lblMaterias.Name = "lblMaterias";
            this.lblMaterias.Size = new System.Drawing.Size(64, 17);
            this.lblMaterias.TabIndex = 3;
            this.lblMaterias.Text = "Materias";
            // 
            // txtAnioInscripcion
            // 
            this.txtAnioInscripcion.Location = new System.Drawing.Point(447, 75);
            this.txtAnioInscripcion.Name = "txtAnioInscripcion";
            this.txtAnioInscripcion.Size = new System.Drawing.Size(121, 20);
            this.txtAnioInscripcion.TabIndex = 2;
            // 
            // comboBox1
            // 
            this.comboBox1.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Location = new System.Drawing.Point(123, 74);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(121, 21);
            this.comboBox1.TabIndex = 1;
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.AllowUserToResizeColumns = false;
            this.dataGridView1.AllowUserToResizeRows = false;
            this.dataGridView1.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(6, 122);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.Size = new System.Drawing.Size(641, 329);
            this.dataGridView1.TabIndex = 0;
            // 
            // tabPage2
            // 
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(653, 457);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "tabPage2";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // tabPage3
            // 
            this.tabPage3.Location = new System.Drawing.Point(4, 22);
            this.tabPage3.Name = "tabPage3";
            this.tabPage3.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage3.Size = new System.Drawing.Size(653, 457);
            this.tabPage3.TabIndex = 2;
            this.tabPage3.Text = "tabPage3";
            this.tabPage3.UseVisualStyleBackColor = true;
            // 
            // tabPage4
            // 
            this.tabPage4.Location = new System.Drawing.Point(4, 22);
            this.tabPage4.Name = "tabPage4";
            this.tabPage4.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage4.Size = new System.Drawing.Size(653, 457);
            this.tabPage4.TabIndex = 3;
            this.tabPage4.Text = "tabPage4";
            this.tabPage4.UseVisualStyleBackColor = true;
            // 
            // tabPage5
            // 
            this.tabPage5.Location = new System.Drawing.Point(4, 22);
            this.tabPage5.Name = "tabPage5";
            this.tabPage5.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage5.Size = new System.Drawing.Size(653, 457);
            this.tabPage5.TabIndex = 4;
            this.tabPage5.Text = "tabPage5";
            this.tabPage5.UseVisualStyleBackColor = true;
            // 
            // btnlLimpiar
            // 
            this.btnlLimpiar.Location = new System.Drawing.Point(42, 74);
            this.btnlLimpiar.Name = "btnlLimpiar";
            this.btnlLimpiar.Size = new System.Drawing.Size(64, 23);
            this.btnlLimpiar.TabIndex = 7;
            this.btnlLimpiar.Text = "Limpiar";
            this.btnlLimpiar.UseVisualStyleBackColor = true;
            this.btnlLimpiar.Click += new System.EventHandler(this.btnlLimpiar_Click);
            // 
            // Inicio
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 483);
            this.Controls.Add(this.tabControl1);
            this.Controls.Add(this.panel1);
            this.Name = "Inicio";
            this.Text = "Consultas";
            this.Load += new System.EventHandler(this.Inicio_Load);
            this.panel1.ResumeLayout(false);
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabPage1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.RadioButton rbC5;
        private System.Windows.Forms.RadioButton rbC4;
        private System.Windows.Forms.RadioButton rbC3;
        private System.Windows.Forms.RadioButton rbC2;
        private System.Windows.Forms.RadioButton rbC1;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.TabPage tabPage3;
        private System.Windows.Forms.TabPage tabPage4;
        private System.Windows.Forms.TabPage tabPage5;
        private System.Windows.Forms.Button btnBuscar;
        private System.Windows.Forms.Label lblAnio;
        private System.Windows.Forms.Label lblMaterias;
        private System.Windows.Forms.TextBox txtAnioInscripcion;
        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnlLimpiar;
    }
}

