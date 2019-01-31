using BikeClubLib.BusinessLogic.Services;
using BikeClubLib.Entities;
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
    public partial class CrearRuta : Form
    {
        Difficulty dificultad;
        private IBikeClubService service;
        public CrearRuta(IBikeClubService service)
        {
            this.service = service;
            InitializeComponent();
        }

        private void textBox5_TextChanged(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void CrearRuta_Load(object sender, EventArgs e)
        {
            String facil = "Easy";
            String medio = "Medium";
            String dificil = "Hard";
            String pro = "Pro";
            comboBoxDificultad.Items.Add(facil);
            comboBoxDificultad.Items.Add(medio);
            comboBoxDificultad.Items.Add(dificil);
            comboBoxDificultad.Items.Add(pro);
        }

        private void textBoxNombre_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBoxInicio_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBoxFin_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBoxDesnivel_TextChanged(object sender, EventArgs e)
        {

        }

        private void buttonCrearRuta_Click(object sender, EventArgs e)
        {
            String nombre = textBoxNombre.Text;
            String inicio = textBoxInicio.Text;
            String fin = textBoxFin.Text;
            int desnivel = int.Parse(textBoxDesnivel.Text);
            int distancia = int.Parse(textBoxDistancia.Text);

            int result;

            if (!int.TryParse(textBoxDesnivel.Text, out result))
            {
                MessageBox.Show("Desnivel debe ser un número", "Error");
            }
           

            if (!int.TryParse(textBoxDistancia.Text, out result))
            {
                MessageBox.Show("Distancia debe ser un número", "Error");
            }
           
            if (comboBoxDificultad.SelectedIndex == 0){
                dificultad = Difficulty.easy;
            }
           else if (comboBoxDificultad.SelectedIndex == 1)
            {
                dificultad = Difficulty.medium;
            }
           else if (comboBoxDificultad.SelectedIndex == 2)
            {
                dificultad = Difficulty.hard;
            }
           else if (comboBoxDificultad.SelectedIndex == 3)
            {
                dificultad = Difficulty.pro;
                
            }

            Route r = new Route(nombre, inicio, fin, desnivel, distancia, dificultad);
            service.addRoute(r);
            this.Close();
            CrearEvento ce = new CrearEvento(service);
            ce.ShowDialog();
            
        }

        private void buttonVolver_Click(object sender, EventArgs e)
        {
            this.Close();
           
        }
    }
}
