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
    public partial class Socios : Form
    {

        private IBikeClubService service;
        static String usuario;

        public Socios(IBikeClubService service)
        {
            this.service = service;
            InitializeComponent();


            Member m = service.lastLogin();
            /*foreach (Member h in m.Children)
            {
                listView1.Items.Add(h.Name);
            }   */

        /*    labelNombre_Socio.Text = m.Name;
            labeldni.Text = m.ID;*/

        }


        private void buttonVolver_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void buttonCerrarSesión_Click(object sender, EventArgs e)
        {
            service.saveChanges();
            this.Close();
            
        }

        private void proponerToolStripMenuItem_Click(object sender, EventArgs e)
        {
            CrearEvento crearevent = new CrearEvento(service);
            crearevent.ShowDialog();
        }

        private void eventoToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void inscribirHijoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
            InscribirHijo inscribirhijo = new InscribirHijo(service);
            inscribirhijo.Show();
        }

        private void Socios_Load(object sender, EventArgs e)
        {
            Member m = service.lastLogin();
            labelNombre_Socio.Text = m.Name;
            labeldni.Text = m.ID;
            foreach (Member h in m.Children)
            {
                listView1.Items.Add(h.Name);
            }
            
        }

        private void labelNombre_Socio_Click(object sender, EventArgs e)
        {

        }

        private void labeldni_Click(object sender, EventArgs e)
        {

        }

        private void apuntarseToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ApuntarseAUnEvento apuntar = new ApuntarseAUnEvento(service);
            apuntar.ShowDialog();
        }

       

        private void listView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }



    }
}
