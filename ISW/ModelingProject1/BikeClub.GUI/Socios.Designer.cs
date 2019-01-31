namespace BikeClub.GUI
{
    partial class Socios
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
            this.buttonCerrarSesión = new System.Windows.Forms.Button();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.inscribirHijoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.EventoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.apuntarseToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.proponerToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.labelNombre_Socio = new System.Windows.Forms.Label();
            this.labeldni = new System.Windows.Forms.Label();
            this.listView1 = new System.Windows.Forms.ListView();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // buttonCerrarSesión
            // 
            this.buttonCerrarSesión.Location = new System.Drawing.Point(30, 250);
            this.buttonCerrarSesión.Name = "buttonCerrarSesión";
            this.buttonCerrarSesión.Size = new System.Drawing.Size(102, 23);
            this.buttonCerrarSesión.TabIndex = 19;
            this.buttonCerrarSesión.Text = "Cerrar Sesión";
            this.buttonCerrarSesión.UseVisualStyleBackColor = true;
            this.buttonCerrarSesión.Click += new System.EventHandler(this.buttonCerrarSesión_Click);
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.inscribirHijoToolStripMenuItem,
            this.EventoToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(449, 29);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // inscribirHijoToolStripMenuItem
            // 
            this.inscribirHijoToolStripMenuItem.Font = new System.Drawing.Font("Segoe UI", 12F);
            this.inscribirHijoToolStripMenuItem.Name = "inscribirHijoToolStripMenuItem";
            this.inscribirHijoToolStripMenuItem.Size = new System.Drawing.Size(108, 25);
            this.inscribirHijoToolStripMenuItem.Text = "Inscribir hijo";
            this.inscribirHijoToolStripMenuItem.Click += new System.EventHandler(this.inscribirHijoToolStripMenuItem_Click);
            // 
            // EventoToolStripMenuItem
            // 
            this.EventoToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.apuntarseToolStripMenuItem,
            this.proponerToolStripMenuItem});
            this.EventoToolStripMenuItem.Font = new System.Drawing.Font("Segoe UI", 12F);
            this.EventoToolStripMenuItem.Name = "EventoToolStripMenuItem";
            this.EventoToolStripMenuItem.Size = new System.Drawing.Size(69, 25);
            this.EventoToolStripMenuItem.Text = "Evento";
            this.EventoToolStripMenuItem.Click += new System.EventHandler(this.eventoToolStripMenuItem_Click);
            // 
            // apuntarseToolStripMenuItem
            // 
            this.apuntarseToolStripMenuItem.Name = "apuntarseToolStripMenuItem";
            this.apuntarseToolStripMenuItem.Size = new System.Drawing.Size(151, 26);
            this.apuntarseToolStripMenuItem.Text = "Apuntarse";
            this.apuntarseToolStripMenuItem.Click += new System.EventHandler(this.apuntarseToolStripMenuItem_Click);
            // 
            // proponerToolStripMenuItem
            // 
            this.proponerToolStripMenuItem.Name = "proponerToolStripMenuItem";
            this.proponerToolStripMenuItem.Size = new System.Drawing.Size(151, 26);
            this.proponerToolStripMenuItem.Text = "Proponer";
            this.proponerToolStripMenuItem.Click += new System.EventHandler(this.proponerToolStripMenuItem_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.label1.Location = new System.Drawing.Point(46, 53);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(137, 20);
            this.label1.TabIndex = 20;
            this.label1.Text = "Datos del usuario:";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(57, 94);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(47, 13);
            this.label2.TabIndex = 21;
            this.label2.Text = "Nombre:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(57, 117);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(29, 13);
            this.label3.TabIndex = 22;
            this.label3.Text = "DNI:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(57, 143);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(33, 13);
            this.label4.TabIndex = 23;
            this.label4.Text = "Hijos:";
            // 
            // labelNombre_Socio
            // 
            this.labelNombre_Socio.AutoSize = true;
            this.labelNombre_Socio.Location = new System.Drawing.Point(123, 94);
            this.labelNombre_Socio.Name = "labelNombre_Socio";
            this.labelNombre_Socio.Size = new System.Drawing.Size(0, 13);
            this.labelNombre_Socio.TabIndex = 24;
            this.labelNombre_Socio.Click += new System.EventHandler(this.labelNombre_Socio_Click);
            // 
            // labeldni
            // 
            this.labeldni.AutoSize = true;
            this.labeldni.Location = new System.Drawing.Point(123, 117);
            this.labeldni.Name = "labeldni";
            this.labeldni.Size = new System.Drawing.Size(0, 13);
            this.labeldni.TabIndex = 26;
            this.labeldni.Click += new System.EventHandler(this.labeldni_Click);
            // 
            // listView1
            // 
            this.listView1.Location = new System.Drawing.Point(111, 143);
            this.listView1.Name = "listView1";
            this.listView1.Size = new System.Drawing.Size(214, 63);
            this.listView1.TabIndex = 32;
            this.listView1.UseCompatibleStateImageBehavior = false;
            this.listView1.SelectedIndexChanged += new System.EventHandler(this.listView1_SelectedIndexChanged);
            // 
            // Socios
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(449, 298);
            this.Controls.Add(this.listView1);
            this.Controls.Add(this.labeldni);
            this.Controls.Add(this.labelNombre_Socio);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.buttonCerrarSesión);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "Socios";
            this.Text = "Nombre:";
            this.Load += new System.EventHandler(this.Socios_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Button buttonCerrarSesión;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem inscribirHijoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem EventoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem apuntarseToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem proponerToolStripMenuItem;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label labelNombre_Socio;
        private System.Windows.Forms.Label labeldni;
        private System.Windows.Forms.ListView listView1;
    }
}