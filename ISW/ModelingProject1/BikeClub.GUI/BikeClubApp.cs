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
    public partial class BikeClubApp : Form
    {
        private IBikeClubService service;
        public BikeClubApp(IBikeClubService service)
        {
            InitializeComponent();
            this.service = service;
        }

        private void BikeClubApp_Load(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void buttonIniciarSesion_Click(object sender, EventArgs e)
        {
            Login login = new Login(service);
            login.Show();
            
        }

        private void buttonInscribir_Click(object sender, EventArgs e)
        {
            Registrar registrar = new Registrar(service);
            registrar.Show();
        }
    }
}
