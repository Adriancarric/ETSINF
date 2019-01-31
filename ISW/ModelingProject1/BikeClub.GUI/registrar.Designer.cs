namespace BikeClub.GUI
{
    partial class Registrar
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
            this.labelDatosPersonales = new System.Windows.Forms.Label();
            this.labelNombreCompleto = new System.Windows.Forms.Label();
            this.labelFechaNacimiento = new System.Windows.Forms.Label();
            this.labelUsuario = new System.Windows.Forms.Label();
            this.labelContraseña = new System.Windows.Forms.Label();
            this.labelDatosBancarios = new System.Windows.Forms.Label();
            this.labelNombreTitular = new System.Windows.Forms.Label();
            this.labelDNITitular = new System.Windows.Forms.Label();
            this.labelIBAN = new System.Windows.Forms.Label();
            this.label_nombre = new System.Windows.Forms.TextBox();
            this.label_usuario = new System.Windows.Forms.TextBox();
            this.label_passw = new System.Windows.Forms.TextBox();
            this.label_titular = new System.Windows.Forms.TextBox();
            this.label_dni = new System.Windows.Forms.TextBox();
            this.label_iban = new System.Windows.Forms.TextBox();
            this.buttonVolver = new System.Windows.Forms.Button();
            this.buttonAceptar = new System.Windows.Forms.Button();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.SuspendLayout();
            // 
            // labelDatosPersonales
            // 
            this.labelDatosPersonales.AutoSize = true;
            this.labelDatosPersonales.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F);
            this.labelDatosPersonales.Location = new System.Drawing.Point(19, 9);
            this.labelDatosPersonales.Name = "labelDatosPersonales";
            this.labelDatosPersonales.Size = new System.Drawing.Size(170, 25);
            this.labelDatosPersonales.TabIndex = 0;
            this.labelDatosPersonales.Text = "Datos personales:";
            this.labelDatosPersonales.Click += new System.EventHandler(this.label1_Click);
            // 
            // labelNombreCompleto
            // 
            this.labelNombreCompleto.AutoSize = true;
            this.labelNombreCompleto.Location = new System.Drawing.Point(21, 59);
            this.labelNombreCompleto.Name = "labelNombreCompleto";
            this.labelNombreCompleto.Size = new System.Drawing.Size(93, 13);
            this.labelNombreCompleto.TabIndex = 1;
            this.labelNombreCompleto.Text = "Nombre completo:";
            this.labelNombreCompleto.Click += new System.EventHandler(this.label1_Click_1);
            // 
            // labelFechaNacimiento
            // 
            this.labelFechaNacimiento.AutoSize = true;
            this.labelFechaNacimiento.Location = new System.Drawing.Point(21, 91);
            this.labelFechaNacimiento.Name = "labelFechaNacimiento";
            this.labelFechaNacimiento.Size = new System.Drawing.Size(94, 13);
            this.labelFechaNacimiento.TabIndex = 2;
            this.labelFechaNacimiento.Text = "Fecha nacimiento:";
            this.labelFechaNacimiento.Click += new System.EventHandler(this.label1_Click_2);
            // 
            // labelUsuario
            // 
            this.labelUsuario.AutoSize = true;
            this.labelUsuario.Location = new System.Drawing.Point(22, 128);
            this.labelUsuario.Name = "labelUsuario";
            this.labelUsuario.Size = new System.Drawing.Size(46, 13);
            this.labelUsuario.TabIndex = 3;
            this.labelUsuario.Text = "Usuario:";
            // 
            // labelContraseña
            // 
            this.labelContraseña.AutoSize = true;
            this.labelContraseña.Location = new System.Drawing.Point(22, 163);
            this.labelContraseña.Name = "labelContraseña";
            this.labelContraseña.Size = new System.Drawing.Size(64, 13);
            this.labelContraseña.TabIndex = 4;
            this.labelContraseña.Text = "Contraseña:";
            // 
            // labelDatosBancarios
            // 
            this.labelDatosBancarios.AutoSize = true;
            this.labelDatosBancarios.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F);
            this.labelDatosBancarios.Location = new System.Drawing.Point(356, 9);
            this.labelDatosBancarios.Name = "labelDatosBancarios";
            this.labelDatosBancarios.Size = new System.Drawing.Size(159, 25);
            this.labelDatosBancarios.TabIndex = 5;
            this.labelDatosBancarios.Text = "Datos bancarios:";
            this.labelDatosBancarios.Click += new System.EventHandler(this.labelDatosBancarios_Click);
            // 
            // labelNombreTitular
            // 
            this.labelNombreTitular.AutoSize = true;
            this.labelNombreTitular.Location = new System.Drawing.Point(358, 59);
            this.labelNombreTitular.Name = "labelNombreTitular";
            this.labelNombreTitular.Size = new System.Drawing.Size(79, 13);
            this.labelNombreTitular.TabIndex = 6;
            this.labelNombreTitular.Text = "Nombre Titular:";
            this.labelNombreTitular.Click += new System.EventHandler(this.label1_Click_3);
            // 
            // labelDNITitular
            // 
            this.labelDNITitular.AutoSize = true;
            this.labelDNITitular.Location = new System.Drawing.Point(358, 91);
            this.labelDNITitular.Name = "labelDNITitular";
            this.labelDNITitular.Size = new System.Drawing.Size(74, 13);
            this.labelDNITitular.TabIndex = 7;
            this.labelDNITitular.Text = "DNI del titular:";
            // 
            // labelIBAN
            // 
            this.labelIBAN.AutoSize = true;
            this.labelIBAN.Location = new System.Drawing.Point(358, 128);
            this.labelIBAN.Name = "labelIBAN";
            this.labelIBAN.Size = new System.Drawing.Size(35, 13);
            this.labelIBAN.TabIndex = 8;
            this.labelIBAN.Text = "IBAN:";
            // 
            // label_nombre
            // 
            this.label_nombre.Location = new System.Drawing.Point(120, 56);
            this.label_nombre.Name = "label_nombre";
            this.label_nombre.Size = new System.Drawing.Size(200, 20);
            this.label_nombre.TabIndex = 19;
            this.label_nombre.TextChanged += new System.EventHandler(this.label_nombre_TextChanged);
            // 
            // label_usuario
            // 
            this.label_usuario.Location = new System.Drawing.Point(120, 125);
            this.label_usuario.Name = "label_usuario";
            this.label_usuario.Size = new System.Drawing.Size(126, 20);
            this.label_usuario.TabIndex = 11;
            this.label_usuario.TextChanged += new System.EventHandler(this.label_usuario_TextChanged);
            // 
            // label_passw
            // 
            this.label_passw.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.label_passw.Location = new System.Drawing.Point(120, 160);
            this.label_passw.Name = "label_passw";
            this.label_passw.PasswordChar = '*';
            this.label_passw.Size = new System.Drawing.Size(126, 23);
            this.label_passw.TabIndex = 12;
            this.label_passw.TextChanged += new System.EventHandler(this.label_passw_TextChanged);
            // 
            // label_titular
            // 
            this.label_titular.Location = new System.Drawing.Point(443, 56);
            this.label_titular.Name = "label_titular";
            this.label_titular.Size = new System.Drawing.Size(192, 20);
            this.label_titular.TabIndex = 13;
            this.label_titular.TextChanged += new System.EventHandler(this.label_titular_TextChanged);
            // 
            // label_dni
            // 
            this.label_dni.Location = new System.Drawing.Point(443, 88);
            this.label_dni.Name = "label_dni";
            this.label_dni.Size = new System.Drawing.Size(136, 20);
            this.label_dni.TabIndex = 14;
            this.label_dni.TextChanged += new System.EventHandler(this.label_dni_TextChanged);
            // 
            // label_iban
            // 
            this.label_iban.Location = new System.Drawing.Point(443, 125);
            this.label_iban.Name = "label_iban";
            this.label_iban.Size = new System.Drawing.Size(192, 20);
            this.label_iban.TabIndex = 15;
            this.label_iban.TextChanged += new System.EventHandler(this.label_iban_TextChanged);
            // 
            // buttonVolver
            // 
            this.buttonVolver.Location = new System.Drawing.Point(30, 251);
            this.buttonVolver.Name = "buttonVolver";
            this.buttonVolver.Size = new System.Drawing.Size(75, 23);
            this.buttonVolver.TabIndex = 17;
            this.buttonVolver.Text = "Volver";
            this.buttonVolver.UseVisualStyleBackColor = true;
            this.buttonVolver.Click += new System.EventHandler(this.buttonVolver_Click);
            // 
            // buttonAceptar
            // 
            this.buttonAceptar.Location = new System.Drawing.Point(567, 251);
            this.buttonAceptar.Name = "buttonAceptar";
            this.buttonAceptar.Size = new System.Drawing.Size(75, 23);
            this.buttonAceptar.TabIndex = 18;
            this.buttonAceptar.Text = "Aceptar";
            this.buttonAceptar.UseVisualStyleBackColor = true;
            this.buttonAceptar.Click += new System.EventHandler(this.buttonEntrar_Click);
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Location = new System.Drawing.Point(120, 88);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(200, 20);
            this.dateTimePicker1.TabIndex = 0;
            this.dateTimePicker1.ValueChanged += new System.EventHandler(this.dateTimePicker1_ValueChanged);
            // 
            // Registrar
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(684, 299);
            this.Controls.Add(this.dateTimePicker1);
            this.Controls.Add(this.buttonAceptar);
            this.Controls.Add(this.buttonVolver);
            this.Controls.Add(this.label_iban);
            this.Controls.Add(this.label_dni);
            this.Controls.Add(this.label_titular);
            this.Controls.Add(this.label_passw);
            this.Controls.Add(this.label_usuario);
            this.Controls.Add(this.label_nombre);
            this.Controls.Add(this.labelIBAN);
            this.Controls.Add(this.labelDNITitular);
            this.Controls.Add(this.labelNombreTitular);
            this.Controls.Add(this.labelDatosBancarios);
            this.Controls.Add(this.labelContraseña);
            this.Controls.Add(this.labelUsuario);
            this.Controls.Add(this.labelFechaNacimiento);
            this.Controls.Add(this.labelNombreCompleto);
            this.Controls.Add(this.labelDatosPersonales);
            this.Name = "Registrar";
            this.Text = "Registrar";
            this.Load += new System.EventHandler(this.registrar_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label labelDatosPersonales;
        private System.Windows.Forms.Label labelNombreCompleto;
        private System.Windows.Forms.Label labelFechaNacimiento;
        private System.Windows.Forms.Label labelUsuario;
        private System.Windows.Forms.Label labelContraseña;
        private System.Windows.Forms.Label labelDatosBancarios;
        private System.Windows.Forms.Label labelNombreTitular;
        private System.Windows.Forms.Label labelDNITitular;
        private System.Windows.Forms.Label labelIBAN;
        private System.Windows.Forms.TextBox label_nombre;
        private System.Windows.Forms.TextBox label_usuario;
        private System.Windows.Forms.TextBox label_passw;
        private System.Windows.Forms.TextBox label_titular;
        private System.Windows.Forms.TextBox label_dni;
        private System.Windows.Forms.TextBox label_iban;
        private System.Windows.Forms.Button buttonVolver;
        private System.Windows.Forms.Button buttonAceptar;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
    }
}