namespace BikeClub.GUI
{
    partial class BikeClubApp
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.labelTitulo = new System.Windows.Forms.Label();
            this.buttonregistrar = new System.Windows.Forms.Button();
            this.buttonIniciarSesion = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // labelTitulo
            // 
            this.labelTitulo.AutoSize = true;
            this.labelTitulo.Font = new System.Drawing.Font("Microsoft Sans Serif", 25F);
            this.labelTitulo.Location = new System.Drawing.Point(142, 40);
            this.labelTitulo.Name = "labelTitulo";
            this.labelTitulo.Size = new System.Drawing.Size(224, 39);
            this.labelTitulo.TabIndex = 0;
            this.labelTitulo.Text = "BikeClubAPP";
            this.labelTitulo.Click += new System.EventHandler(this.label1_Click);
            // 
            // buttonregistrar
            // 
            this.buttonregistrar.Location = new System.Drawing.Point(83, 154);
            this.buttonregistrar.Name = "buttonregistrar";
            this.buttonregistrar.Size = new System.Drawing.Size(125, 57);
            this.buttonregistrar.TabIndex = 1;
            this.buttonregistrar.Text = "REGISTRAR";
            this.buttonregistrar.UseVisualStyleBackColor = true;
            this.buttonregistrar.Click += new System.EventHandler(this.buttonInscribir_Click);
            // 
            // buttonIniciarSesion
            // 
            this.buttonIniciarSesion.Location = new System.Drawing.Point(306, 154);
            this.buttonIniciarSesion.Name = "buttonIniciarSesion";
            this.buttonIniciarSesion.Size = new System.Drawing.Size(125, 57);
            this.buttonIniciarSesion.TabIndex = 2;
            this.buttonIniciarSesion.Text = "INICIAR SESIÓN";
            this.buttonIniciarSesion.UseVisualStyleBackColor = true;
            this.buttonIniciarSesion.Click += new System.EventHandler(this.buttonIniciarSesion_Click);
            // 
            // BikeClubApp
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(514, 326);
            this.Controls.Add(this.buttonIniciarSesion);
            this.Controls.Add(this.buttonregistrar);
            this.Controls.Add(this.labelTitulo);
            this.Name = "BikeClubApp";
            this.Text = "BikeClubApp";
            this.Load += new System.EventHandler(this.BikeClubApp_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label labelTitulo;
        private System.Windows.Forms.Button buttonregistrar;
        private System.Windows.Forms.Button buttonIniciarSesion;
    }
}

