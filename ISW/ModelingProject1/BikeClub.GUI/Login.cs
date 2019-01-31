using BikeClubLib.BusinessLogic.Services;
using BikeClubLib.Entities;
using BikeClubLib.Persistence;
using BikeClubLib.Persistence.EntityFramework;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BikeClub.GUI
{
    public partial class Login : Form
    {
        private IBikeClubService service;
        public Login(IBikeClubService service)
        {
            this.service = service; 
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click_1(object sender, EventArgs e)
        {

        }

        private void buttonVolver_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void textBoxUsuario_TextChanged(object sender, EventArgs e)
        {
            
        }

        private void Login_Load(object sender, EventArgs e)
        {

        }

        private void buttonEntrar_Click(object sender, EventArgs e)
        {
     
            String usu = textBoxUsuario.Text;
            String cont = textBoxContraseña.Text;


           
            if (service.login(usu,cont) != null) {

                Socios socios = new Socios(service);
                socios.Show();
                this.Close();

            }
            else {
                MessageBox.Show("Los campos son incorrectos. Usuario no registrado", "Error");
            }
                

        }

        private void textBoxContraseña_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
