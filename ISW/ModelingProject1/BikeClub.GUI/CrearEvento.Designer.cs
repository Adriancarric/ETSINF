namespace BikeClub.GUI
{
    partial class CrearEvento
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
            this.buttonCrearEvento = new System.Windows.Forms.Button();
            this.labelDescripción = new System.Windows.Forms.Label();
            this.descripcionEvento = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.dateTimePickerIni = new System.Windows.Forms.DateTimePicker();
            this.dateTimePickerFin = new System.Windows.Forms.DateTimePicker();
            this.radioButton1dia = new System.Windows.Forms.RadioButton();
            this.radioButtonVariosdias = new System.Windows.Forms.RadioButton();
            this.comboBoxRutas = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label4InfoRuta = new System.Windows.Forms.Label();
            this.CrearRuta = new System.Windows.Forms.Button();
            this.buttonAñadirRuta = new System.Windows.Forms.Button();
            this.listView1 = new System.Windows.Forms.ListView();
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.miseventos = new System.Windows.Forms.ListView();
            this.label4 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // buttonVolver
            // 
            this.buttonVolver.Location = new System.Drawing.Point(12, 401);
            this.buttonVolver.Name = "buttonVolver";
            this.buttonVolver.Size = new System.Drawing.Size(75, 23);
            this.buttonVolver.TabIndex = 16;
            this.buttonVolver.Text = "Volver";
            this.buttonVolver.UseVisualStyleBackColor = true;
            this.buttonVolver.Click += new System.EventHandler(this.buttonVolver_Click);
            // 
            // buttonCrearEvento
            // 
            this.buttonCrearEvento.Location = new System.Drawing.Point(693, 401);
            this.buttonCrearEvento.Name = "buttonCrearEvento";
            this.buttonCrearEvento.Size = new System.Drawing.Size(82, 23);
            this.buttonCrearEvento.TabIndex = 17;
            this.buttonCrearEvento.Text = "Crear Evento";
            this.buttonCrearEvento.UseVisualStyleBackColor = true;
            this.buttonCrearEvento.Click += new System.EventHandler(this.buttonCrearEvento_Click);
            // 
            // labelDescripción
            // 
            this.labelDescripción.AutoSize = true;
            this.labelDescripción.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.labelDescripción.Location = new System.Drawing.Point(44, 225);
            this.labelDescripción.Name = "labelDescripción";
            this.labelDescripción.Size = new System.Drawing.Size(86, 17);
            this.labelDescripción.TabIndex = 18;
            this.labelDescripción.Text = "Descripción:";
            this.labelDescripción.Click += new System.EventHandler(this.labelDescripción_Click);
            // 
            // descripcionEvento
            // 
            this.descripcionEvento.Location = new System.Drawing.Point(136, 224);
            this.descripcionEvento.Name = "descripcionEvento";
            this.descripcionEvento.Size = new System.Drawing.Size(242, 20);
            this.descripcionEvento.TabIndex = 19;
            this.descripcionEvento.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.label1.Location = new System.Drawing.Point(44, 279);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(87, 17);
            this.label1.TabIndex = 20;
            this.label1.Text = "Fecha Inicio:";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.label2.Location = new System.Drawing.Point(44, 315);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(74, 17);
            this.label2.TabIndex = 21;
            this.label2.Text = "Fecha Fin:";
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // dateTimePickerIni
            // 
            this.dateTimePickerIni.Location = new System.Drawing.Point(137, 279);
            this.dateTimePickerIni.Name = "dateTimePickerIni";
            this.dateTimePickerIni.Size = new System.Drawing.Size(200, 20);
            this.dateTimePickerIni.TabIndex = 22;
            this.dateTimePickerIni.ValueChanged += new System.EventHandler(this.dateTimePickerIni_ValueChanged);
            // 
            // dateTimePickerFin
            // 
            this.dateTimePickerFin.Location = new System.Drawing.Point(137, 315);
            this.dateTimePickerFin.Name = "dateTimePickerFin";
            this.dateTimePickerFin.Size = new System.Drawing.Size(200, 20);
            this.dateTimePickerFin.TabIndex = 23;
            this.dateTimePickerFin.ValueChanged += new System.EventHandler(this.dateTimePickerFin_ValueChanged);
            // 
            // radioButton1dia
            // 
            this.radioButton1dia.AutoSize = true;
            this.radioButton1dia.Location = new System.Drawing.Point(46, 194);
            this.radioButton1dia.Name = "radioButton1dia";
            this.radioButton1dia.Size = new System.Drawing.Size(97, 17);
            this.radioButton1dia.TabIndex = 24;
            this.radioButton1dia.TabStop = true;
            this.radioButton1dia.Text = "Evento Un Día";
            this.radioButton1dia.UseVisualStyleBackColor = true;
            this.radioButton1dia.CheckedChanged += new System.EventHandler(this.radioButton1dia_CheckedChanged);
            // 
            // radioButtonVariosdias
            // 
            this.radioButtonVariosdias.AutoSize = true;
            this.radioButtonVariosdias.Location = new System.Drawing.Point(182, 194);
            this.radioButtonVariosdias.Name = "radioButtonVariosdias";
            this.radioButtonVariosdias.Size = new System.Drawing.Size(117, 17);
            this.radioButtonVariosdias.TabIndex = 25;
            this.radioButtonVariosdias.TabStop = true;
            this.radioButtonVariosdias.Text = "Evento Varios Días";
            this.radioButtonVariosdias.UseVisualStyleBackColor = true;
            this.radioButtonVariosdias.CheckedChanged += new System.EventHandler(this.radioButtonVariosdias_CheckedChanged);
            // 
            // comboBoxRutas
            // 
            this.comboBoxRutas.FormattingEnabled = true;
            this.comboBoxRutas.Location = new System.Drawing.Point(532, 54);
            this.comboBoxRutas.Name = "comboBoxRutas";
            this.comboBoxRutas.Size = new System.Drawing.Size(121, 21);
            this.comboBoxRutas.TabIndex = 26;
            this.comboBoxRutas.SelectedIndexChanged += new System.EventHandler(this.comboBoxRutas_SelectedIndexChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.label3.Location = new System.Drawing.Point(484, 55);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(42, 17);
            this.label3.TabIndex = 27;
            this.label3.Text = "Ruta:";
            // 
            // label4InfoRuta
            // 
            this.label4InfoRuta.AutoSize = true;
            this.label4InfoRuta.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.label4InfoRuta.Location = new System.Drawing.Point(493, 95);
            this.label4InfoRuta.Name = "label4InfoRuta";
            this.label4InfoRuta.Size = new System.Drawing.Size(145, 17);
            this.label4InfoRuta.TabIndex = 28;
            this.label4InfoRuta.Text = "Información de la ruta";
            this.label4InfoRuta.Click += new System.EventHandler(this.label4_Click);
            // 
            // CrearRuta
            // 
            this.CrearRuta.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.CrearRuta.Location = new System.Drawing.Point(517, 15);
            this.CrearRuta.Name = "CrearRuta";
            this.CrearRuta.Size = new System.Drawing.Size(121, 23);
            this.CrearRuta.TabIndex = 29;
            this.CrearRuta.Text = "Crear Ruta";
            this.CrearRuta.UseVisualStyleBackColor = true;
            this.CrearRuta.Click += new System.EventHandler(this.CrearRuta_Click);
            // 
            // buttonAñadirRuta
            // 
            this.buttonAñadirRuta.Location = new System.Drawing.Point(683, 52);
            this.buttonAñadirRuta.Name = "buttonAñadirRuta";
            this.buttonAñadirRuta.Size = new System.Drawing.Size(75, 23);
            this.buttonAñadirRuta.TabIndex = 30;
            this.buttonAñadirRuta.Text = "Añadir";
            this.buttonAñadirRuta.UseVisualStyleBackColor = true;
            this.buttonAñadirRuta.Click += new System.EventHandler(this.buttonAñadirRuta_Click);
            // 
            // listView1
            // 
            this.listView1.Location = new System.Drawing.Point(487, 243);
            this.listView1.Name = "listView1";
            this.listView1.Size = new System.Drawing.Size(250, 113);
            this.listView1.TabIndex = 31;
            this.listView1.UseCompatibleStateImageBehavior = false;
            this.listView1.SelectedIndexChanged += new System.EventHandler(this.listView1_SelectedIndexChanged);
            // 
            // miseventos
            // 
            this.miseventos.Location = new System.Drawing.Point(46, 52);
            this.miseventos.Name = "miseventos";
            this.miseventos.Size = new System.Drawing.Size(250, 89);
            this.miseventos.TabIndex = 32;
            this.miseventos.UseCompatibleStateImageBehavior = false;
            this.miseventos.SelectedIndexChanged += new System.EventHandler(this.listView2_SelectedIndexChanged);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(44, 25);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(110, 13);
            this.label4.TabIndex = 33;
            this.label4.Text = "Mis Eventos Creados:";
            // 
            // CrearEvento
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(787, 436);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.miseventos);
            this.Controls.Add(this.listView1);
            this.Controls.Add(this.buttonAñadirRuta);
            this.Controls.Add(this.CrearRuta);
            this.Controls.Add(this.label4InfoRuta);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.comboBoxRutas);
            this.Controls.Add(this.radioButtonVariosdias);
            this.Controls.Add(this.radioButton1dia);
            this.Controls.Add(this.dateTimePickerFin);
            this.Controls.Add(this.dateTimePickerIni);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.descripcionEvento);
            this.Controls.Add(this.labelDescripción);
            this.Controls.Add(this.buttonCrearEvento);
            this.Controls.Add(this.buttonVolver);
            this.Name = "CrearEvento";
            this.Text = "CrearEvento";
            this.Load += new System.EventHandler(this.CrearEvento_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button buttonVolver;
        private System.Windows.Forms.Button buttonCrearEvento;
        private System.Windows.Forms.Label labelDescripción;
        private System.Windows.Forms.TextBox descripcionEvento;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DateTimePicker dateTimePickerIni;
        private System.Windows.Forms.DateTimePicker dateTimePickerFin;
        private System.Windows.Forms.RadioButton radioButton1dia;
        private System.Windows.Forms.RadioButton radioButtonVariosdias;
        private System.Windows.Forms.ComboBox comboBoxRutas;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4InfoRuta;
        private System.Windows.Forms.Button CrearRuta;
        private System.Windows.Forms.Button buttonAñadirRuta;
        private System.Windows.Forms.ListView listView1;
        private System.ComponentModel.BackgroundWorker backgroundWorker1;
        private System.Windows.Forms.ListView miseventos;
        private System.Windows.Forms.Label label4;
    }
}