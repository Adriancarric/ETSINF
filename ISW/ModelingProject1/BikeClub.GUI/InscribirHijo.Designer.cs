namespace BikeClub.GUI
{
    partial class InscribirHijo
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
            this.buttonAceptar = new System.Windows.Forms.Button();
            this.buttonVolver = new System.Windows.Forms.Button();
            this.textBoxContraseña = new System.Windows.Forms.TextBox();
            this.textBoxUsuario = new System.Windows.Forms.TextBox();
            this.textBoxNombreCompleto = new System.Windows.Forms.TextBox();
            this.labelIBAN = new System.Windows.Forms.Label();
            this.labelDNITitular = new System.Windows.Forms.Label();
            this.labelNombreTitular = new System.Windows.Forms.Label();
            this.labelDatosBancarios = new System.Windows.Forms.Label();
            this.labelContraseña = new System.Windows.Forms.Label();
            this.labelUsuario = new System.Windows.Forms.Label();
            this.labelFechaNacimiento = new System.Windows.Forms.Label();
            this.labelNombreCompleto = new System.Windows.Forms.Label();
            this.labelDatosPersonales = new System.Windows.Forms.Label();
            this.labelNombredelpadre = new System.Windows.Forms.Label();
            this.linkLabel1 = new System.Windows.Forms.LinkLabel();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.labelTitular = new System.Windows.Forms.Label();
            this.labelDniTit = new System.Windows.Forms.Label();
            this.labelnomTitular = new System.Windows.Forms.Label();
            this.labelibanhijo = new System.Windows.Forms.Label();
            this.labelcuotaH = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.textBoxdni = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // buttonAceptar
            // 
            this.buttonAceptar.Location = new System.Drawing.Point(666, 289);
            this.buttonAceptar.Name = "buttonAceptar";
            this.buttonAceptar.Size = new System.Drawing.Size(75, 23);
            this.buttonAceptar.TabIndex = 36;
            this.buttonAceptar.Text = "Añadir Hijo";
            this.buttonAceptar.UseVisualStyleBackColor = true;
            this.buttonAceptar.Click += new System.EventHandler(this.buttonAceptar_Click);
            // 
            // buttonVolver
            // 
            this.buttonVolver.Location = new System.Drawing.Point(20, 289);
            this.buttonVolver.Name = "buttonVolver";
            this.buttonVolver.Size = new System.Drawing.Size(75, 23);
            this.buttonVolver.TabIndex = 35;
            this.buttonVolver.Text = "Volver";
            this.buttonVolver.UseVisualStyleBackColor = true;
            this.buttonVolver.Click += new System.EventHandler(this.buttonVolver_Click);
            // 
            // textBoxContraseña
            // 
            this.textBoxContraseña.Location = new System.Drawing.Point(128, 225);
            this.textBoxContraseña.Name = "textBoxContraseña";
            this.textBoxContraseña.PasswordChar = '*';
            this.textBoxContraseña.Size = new System.Drawing.Size(126, 20);
            this.textBoxContraseña.TabIndex = 31;
            this.textBoxContraseña.TextChanged += new System.EventHandler(this.textBoxContraseña_TextChanged);
            // 
            // textBoxUsuario
            // 
            this.textBoxUsuario.Location = new System.Drawing.Point(128, 193);
            this.textBoxUsuario.Name = "textBoxUsuario";
            this.textBoxUsuario.Size = new System.Drawing.Size(126, 20);
            this.textBoxUsuario.TabIndex = 30;
            this.textBoxUsuario.TextChanged += new System.EventHandler(this.textBoxUsuario_TextChanged);
            // 
            // textBoxNombreCompleto
            // 
            this.textBoxNombreCompleto.Location = new System.Drawing.Point(129, 95);
            this.textBoxNombreCompleto.Name = "textBoxNombreCompleto";
            this.textBoxNombreCompleto.Size = new System.Drawing.Size(192, 20);
            this.textBoxNombreCompleto.TabIndex = 29;
            this.textBoxNombreCompleto.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // labelIBAN
            // 
            this.labelIBAN.AutoSize = true;
            this.labelIBAN.Location = new System.Drawing.Point(405, 147);
            this.labelIBAN.Name = "labelIBAN";
            this.labelIBAN.Size = new System.Drawing.Size(35, 13);
            this.labelIBAN.TabIndex = 27;
            this.labelIBAN.Text = "IBAN:";
            this.labelIBAN.Click += new System.EventHandler(this.labelIBAN_Click);
            // 
            // labelDNITitular
            // 
            this.labelDNITitular.AutoSize = true;
            this.labelDNITitular.Location = new System.Drawing.Point(405, 110);
            this.labelDNITitular.Name = "labelDNITitular";
            this.labelDNITitular.Size = new System.Drawing.Size(74, 13);
            this.labelDNITitular.TabIndex = 26;
            this.labelDNITitular.Text = "DNI del titular:";
            this.labelDNITitular.Click += new System.EventHandler(this.labelDNITitular_Click);
            // 
            // labelNombreTitular
            // 
            this.labelNombreTitular.AutoSize = true;
            this.labelNombreTitular.Location = new System.Drawing.Point(405, 78);
            this.labelNombreTitular.Name = "labelNombreTitular";
            this.labelNombreTitular.Size = new System.Drawing.Size(79, 13);
            this.labelNombreTitular.TabIndex = 25;
            this.labelNombreTitular.Text = "Nombre Titular:";
            this.labelNombreTitular.Click += new System.EventHandler(this.labelNombreTitular_Click);
            // 
            // labelDatosBancarios
            // 
            this.labelDatosBancarios.AutoSize = true;
            this.labelDatosBancarios.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F);
            this.labelDatosBancarios.Location = new System.Drawing.Point(403, 28);
            this.labelDatosBancarios.Name = "labelDatosBancarios";
            this.labelDatosBancarios.Size = new System.Drawing.Size(159, 25);
            this.labelDatosBancarios.TabIndex = 24;
            this.labelDatosBancarios.Text = "Datos bancarios:";
            this.labelDatosBancarios.Click += new System.EventHandler(this.labelDatosBancarios_Click);
            // 
            // labelContraseña
            // 
            this.labelContraseña.AutoSize = true;
            this.labelContraseña.Location = new System.Drawing.Point(30, 228);
            this.labelContraseña.Name = "labelContraseña";
            this.labelContraseña.Size = new System.Drawing.Size(64, 13);
            this.labelContraseña.TabIndex = 23;
            this.labelContraseña.Text = "Contraseña:";
            this.labelContraseña.Click += new System.EventHandler(this.labelContraseña_Click);
            // 
            // labelUsuario
            // 
            this.labelUsuario.AutoSize = true;
            this.labelUsuario.Location = new System.Drawing.Point(30, 193);
            this.labelUsuario.Name = "labelUsuario";
            this.labelUsuario.Size = new System.Drawing.Size(46, 13);
            this.labelUsuario.TabIndex = 22;
            this.labelUsuario.Text = "Usuario:";
            this.labelUsuario.Click += new System.EventHandler(this.labelUsuario_Click);
            // 
            // labelFechaNacimiento
            // 
            this.labelFechaNacimiento.AutoSize = true;
            this.labelFechaNacimiento.Location = new System.Drawing.Point(30, 130);
            this.labelFechaNacimiento.Name = "labelFechaNacimiento";
            this.labelFechaNacimiento.Size = new System.Drawing.Size(94, 13);
            this.labelFechaNacimiento.TabIndex = 21;
            this.labelFechaNacimiento.Text = "Fecha nacimiento:";
            this.labelFechaNacimiento.Click += new System.EventHandler(this.labelFechaNacimiento_Click);
            // 
            // labelNombreCompleto
            // 
            this.labelNombreCompleto.AutoSize = true;
            this.labelNombreCompleto.Location = new System.Drawing.Point(30, 98);
            this.labelNombreCompleto.Name = "labelNombreCompleto";
            this.labelNombreCompleto.Size = new System.Drawing.Size(93, 13);
            this.labelNombreCompleto.TabIndex = 20;
            this.labelNombreCompleto.Text = "Nombre completo:";
            this.labelNombreCompleto.Click += new System.EventHandler(this.labelNombreCompleto_Click);
            // 
            // labelDatosPersonales
            // 
            this.labelDatosPersonales.AutoSize = true;
            this.labelDatosPersonales.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F);
            this.labelDatosPersonales.Location = new System.Drawing.Point(28, 28);
            this.labelDatosPersonales.Name = "labelDatosPersonales";
            this.labelDatosPersonales.Size = new System.Drawing.Size(170, 25);
            this.labelDatosPersonales.TabIndex = 19;
            this.labelDatosPersonales.Text = "Datos personales:";
            this.labelDatosPersonales.Click += new System.EventHandler(this.labelDatosPersonales_Click);
            // 
            // labelNombredelpadre
            // 
            this.labelNombredelpadre.AutoSize = true;
            this.labelNombredelpadre.Location = new System.Drawing.Point(30, 63);
            this.labelNombredelpadre.Name = "labelNombredelpadre";
            this.labelNombredelpadre.Size = new System.Drawing.Size(94, 13);
            this.labelNombredelpadre.TabIndex = 37;
            this.labelNombredelpadre.Text = "Nombre del padre:";
            // 
            // linkLabel1
            // 
            this.linkLabel1.AutoSize = true;
            this.linkLabel1.Location = new System.Drawing.Point(507, 78);
            this.linkLabel1.Name = "linkLabel1";
            this.linkLabel1.Size = new System.Drawing.Size(0, 13);
            this.linkLabel1.TabIndex = 38;
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Location = new System.Drawing.Point(130, 130);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(200, 20);
            this.dateTimePicker1.TabIndex = 39;
            // 
            // labelTitular
            // 
            this.labelTitular.AutoSize = true;
            this.labelTitular.Location = new System.Drawing.Point(490, 78);
            this.labelTitular.Name = "labelTitular";
            this.labelTitular.Size = new System.Drawing.Size(0, 13);
            this.labelTitular.TabIndex = 41;
            this.labelTitular.Click += new System.EventHandler(this.label1_Click);
            // 
            // labelDniTit
            // 
            this.labelDniTit.AutoSize = true;
            this.labelDniTit.Location = new System.Drawing.Point(490, 110);
            this.labelDniTit.Name = "labelDniTit";
            this.labelDniTit.Size = new System.Drawing.Size(53, 13);
            this.labelDniTit.TabIndex = 42;
            this.labelDniTit.Text = "labelDnitit";
            this.labelDniTit.Click += new System.EventHandler(this.labelDniTit_Click);
            // 
            // labelnomTitular
            // 
            this.labelnomTitular.AutoSize = true;
            this.labelnomTitular.Location = new System.Drawing.Point(497, 78);
            this.labelnomTitular.Name = "labelnomTitular";
            this.labelnomTitular.Size = new System.Drawing.Size(78, 13);
            this.labelnomTitular.TabIndex = 43;
            this.labelnomTitular.Text = "labelnomTitular";
            this.labelnomTitular.Click += new System.EventHandler(this.label1_Click_1);
            // 
            // labelibanhijo
            // 
            this.labelibanhijo.AutoSize = true;
            this.labelibanhijo.Location = new System.Drawing.Point(443, 146);
            this.labelibanhijo.Name = "labelibanhijo";
            this.labelibanhijo.Size = new System.Drawing.Size(54, 13);
            this.labelibanhijo.TabIndex = 44;
            this.labelibanhijo.Text = "labelIBAN";
            this.labelibanhijo.Click += new System.EventHandler(this.labelibanhijo_Click);
            // 
            // labelcuotaH
            // 
            this.labelcuotaH.AutoSize = true;
            this.labelcuotaH.Location = new System.Drawing.Point(405, 211);
            this.labelcuotaH.Name = "labelcuotaH";
            this.labelcuotaH.Size = new System.Drawing.Size(0, 13);
            this.labelcuotaH.TabIndex = 45;
            this.labelcuotaH.Click += new System.EventHandler(this.label1_Click_2);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(149, 63);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(77, 13);
            this.label1.TabIndex = 46;
            this.label1.Text = "labelnomPadre";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(30, 163);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(29, 13);
            this.label2.TabIndex = 47;
            this.label2.Text = "DNI:";
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // textBoxdni
            // 
            this.textBoxdni.Location = new System.Drawing.Point(130, 160);
            this.textBoxdni.Name = "textBoxdni";
            this.textBoxdni.Size = new System.Drawing.Size(100, 20);
            this.textBoxdni.TabIndex = 48;
            this.textBoxdni.TextChanged += new System.EventHandler(this.textBoxdni_TextChanged);
            // 
            // InscribirHijo
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(767, 333);
            this.Controls.Add(this.textBoxdni);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.labelcuotaH);
            this.Controls.Add(this.labelibanhijo);
            this.Controls.Add(this.labelnomTitular);
            this.Controls.Add(this.labelDniTit);
            this.Controls.Add(this.labelTitular);
            this.Controls.Add(this.dateTimePicker1);
            this.Controls.Add(this.linkLabel1);
            this.Controls.Add(this.labelNombredelpadre);
            this.Controls.Add(this.buttonAceptar);
            this.Controls.Add(this.buttonVolver);
            this.Controls.Add(this.textBoxContraseña);
            this.Controls.Add(this.textBoxUsuario);
            this.Controls.Add(this.textBoxNombreCompleto);
            this.Controls.Add(this.labelIBAN);
            this.Controls.Add(this.labelDNITitular);
            this.Controls.Add(this.labelNombreTitular);
            this.Controls.Add(this.labelDatosBancarios);
            this.Controls.Add(this.labelContraseña);
            this.Controls.Add(this.labelUsuario);
            this.Controls.Add(this.labelFechaNacimiento);
            this.Controls.Add(this.labelNombreCompleto);
            this.Controls.Add(this.labelDatosPersonales);
            this.Name = "InscribirHijo";
            this.Text = "InscribirHijo";
            this.Load += new System.EventHandler(this.InscribirHijo_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button buttonAceptar;
        private System.Windows.Forms.Button buttonVolver;
        private System.Windows.Forms.TextBox textBoxContraseña;
        private System.Windows.Forms.TextBox textBoxUsuario;
        private System.Windows.Forms.TextBox textBoxNombreCompleto;
        private System.Windows.Forms.Label labelIBAN;
        private System.Windows.Forms.Label labelDNITitular;
        private System.Windows.Forms.Label labelNombreTitular;
        private System.Windows.Forms.Label labelDatosBancarios;
        private System.Windows.Forms.Label labelContraseña;
        private System.Windows.Forms.Label labelUsuario;
        private System.Windows.Forms.Label labelFechaNacimiento;
        private System.Windows.Forms.Label labelNombreCompleto;
        private System.Windows.Forms.Label labelDatosPersonales;
        private System.Windows.Forms.Label labelNombredelpadre;
        private System.Windows.Forms.LinkLabel linkLabel1;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
        private System.Windows.Forms.Label labelTitular;
        private System.Windows.Forms.Label labelDniTit;
        private System.Windows.Forms.Label labelnomTitular;
        private System.Windows.Forms.Label labelibanhijo;
        private System.Windows.Forms.Label labelcuotaH;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textBoxdni;
    }
}