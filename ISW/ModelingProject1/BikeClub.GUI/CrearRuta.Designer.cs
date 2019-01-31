namespace BikeClub.GUI
{
    partial class CrearRuta
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
            this.buttonVolver = new System.Windows.Forms.Button();
            this.buttonCrearRuta = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.textBoxNombre = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.textBoxInicio = new System.Windows.Forms.TextBox();
            this.textBoxFin = new System.Windows.Forms.TextBox();
            this.textBoxDesnivel = new System.Windows.Forms.TextBox();
            this.textBoxDistancia = new System.Windows.Forms.TextBox();
            this.comboBoxDificultad = new System.Windows.Forms.ComboBox();
            this.SuspendLayout();
            // 
            // buttonVolver
            // 
            this.buttonVolver.Location = new System.Drawing.Point(30, 316);
            this.buttonVolver.Name = "buttonVolver";
            this.buttonVolver.Size = new System.Drawing.Size(75, 23);
            this.buttonVolver.TabIndex = 36;
            this.buttonVolver.Text = "Volver";
            this.buttonVolver.UseVisualStyleBackColor = true;
            this.buttonVolver.Click += new System.EventHandler(this.buttonVolver_Click);
            // 
            // buttonCrearRuta
            // 
            this.buttonCrearRuta.Location = new System.Drawing.Point(302, 316);
            this.buttonCrearRuta.Name = "buttonCrearRuta";
            this.buttonCrearRuta.Size = new System.Drawing.Size(75, 23);
            this.buttonCrearRuta.TabIndex = 37;
            this.buttonCrearRuta.Text = "Crear Ruta";
            this.buttonCrearRuta.UseVisualStyleBackColor = true;
            this.buttonCrearRuta.Click += new System.EventHandler(this.buttonCrearRuta_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(27, 33);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(47, 13);
            this.label1.TabIndex = 38;
            this.label1.Text = "Nombre:";
            // 
            // textBoxNombre
            // 
            this.textBoxNombre.Location = new System.Drawing.Point(89, 30);
            this.textBoxNombre.Name = "textBoxNombre";
            this.textBoxNombre.Size = new System.Drawing.Size(157, 20);
            this.textBoxNombre.TabIndex = 39;
            this.textBoxNombre.TextChanged += new System.EventHandler(this.textBoxNombre_TextChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(27, 71);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(35, 13);
            this.label2.TabIndex = 40;
            this.label2.Text = "Inicio:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(27, 112);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(24, 13);
            this.label3.TabIndex = 41;
            this.label3.Text = "Fin:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(27, 149);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(51, 13);
            this.label4.TabIndex = 42;
            this.label4.Text = "Desnivel:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(27, 189);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(54, 13);
            this.label5.TabIndex = 43;
            this.label5.Text = "Distancia:";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(27, 228);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(54, 13);
            this.label6.TabIndex = 44;
            this.label6.Text = "Dificultad:";
            // 
            // textBoxInicio
            // 
            this.textBoxInicio.Location = new System.Drawing.Point(89, 68);
            this.textBoxInicio.Name = "textBoxInicio";
            this.textBoxInicio.Size = new System.Drawing.Size(157, 20);
            this.textBoxInicio.TabIndex = 45;
            this.textBoxInicio.TextChanged += new System.EventHandler(this.textBoxInicio_TextChanged);
            // 
            // textBoxFin
            // 
            this.textBoxFin.Location = new System.Drawing.Point(89, 112);
            this.textBoxFin.Name = "textBoxFin";
            this.textBoxFin.Size = new System.Drawing.Size(157, 20);
            this.textBoxFin.TabIndex = 46;
            this.textBoxFin.TextChanged += new System.EventHandler(this.textBoxFin_TextChanged);
            // 
            // textBoxDesnivel
            // 
            this.textBoxDesnivel.Location = new System.Drawing.Point(89, 149);
            this.textBoxDesnivel.Name = "textBoxDesnivel";
            this.textBoxDesnivel.Size = new System.Drawing.Size(157, 20);
            this.textBoxDesnivel.TabIndex = 47;
            this.textBoxDesnivel.TextChanged += new System.EventHandler(this.textBoxDesnivel_TextChanged);
            // 
            // textBoxDistancia
            // 
            this.textBoxDistancia.Location = new System.Drawing.Point(89, 189);
            this.textBoxDistancia.Name = "textBoxDistancia";
            this.textBoxDistancia.Size = new System.Drawing.Size(157, 20);
            this.textBoxDistancia.TabIndex = 48;
            this.textBoxDistancia.TextChanged += new System.EventHandler(this.textBox5_TextChanged);
            // 
            // comboBoxDificultad
            // 
            this.comboBoxDificultad.FormattingEnabled = true;
            this.comboBoxDificultad.Location = new System.Drawing.Point(89, 228);
            this.comboBoxDificultad.Name = "comboBoxDificultad";
            this.comboBoxDificultad.Size = new System.Drawing.Size(148, 21);
            this.comboBoxDificultad.TabIndex = 49;
            this.comboBoxDificultad.SelectedIndexChanged += new System.EventHandler(this.comboBox1_SelectedIndexChanged);
            // 
            // CrearRuta
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(410, 354);
            this.Controls.Add(this.comboBoxDificultad);
            this.Controls.Add(this.textBoxDistancia);
            this.Controls.Add(this.textBoxDesnivel);
            this.Controls.Add(this.textBoxFin);
            this.Controls.Add(this.textBoxInicio);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.textBoxNombre);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.buttonCrearRuta);
            this.Controls.Add(this.buttonVolver);
            this.Name = "CrearRuta";
            this.Text = "CrearRuta";
            this.Load += new System.EventHandler(this.CrearRuta_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button buttonVolver;
        private System.Windows.Forms.Button buttonCrearRuta;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textBoxNombre;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox textBoxInicio;
        private System.Windows.Forms.TextBox textBoxFin;
        private System.Windows.Forms.TextBox textBoxDesnivel;
        private System.Windows.Forms.TextBox textBoxDistancia;
        private System.Windows.Forms.ComboBox comboBoxDificultad;
    }
}