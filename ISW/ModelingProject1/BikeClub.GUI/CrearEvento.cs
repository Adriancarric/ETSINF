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
    public partial class CrearEvento : Form
    {
        private IBikeClubService service;
        private bool undia = false;
        private bool variosdias = false;
        List<Route> lr;
        Route seleccionado;
        int contador = 0;

        public CrearEvento(IBikeClubService service)
        {
            this.service = service;
            InitializeComponent();
            
            foreach(Event e in service.getAllEvents())
            {
                if (e.Responsible.Equals(service.lastLogin()) && e.StartDate.Date > DateTime.Today.Date)
                {
                    miseventos.Items.Add(e.Description + "");
                }
            }
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void dateTimePickerIni_ValueChanged(object sender, EventArgs e)
        {

        }

        private void dateTimePickerFin_ValueChanged(object sender, EventArgs e)
        {

        }

        private void labelDescripción_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void listView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void radioButton1dia_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton1dia.Checked)
            {
                listView1.Clear();
                contador = 0;
                variosdias = false;
                undia = true;
                dateTimePickerFin.Enabled = false;
                if(contador != 0)
                {
                    buttonAñadirRuta.Enabled = false;
                }
                
            }

        }

        private void radioButtonVariosdias_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButtonVariosdias.Checked)
            {
                variosdias = true;
                undia = false;
                dateTimePickerFin.Enabled = true;
                buttonAñadirRuta.Enabled = true;
                
                
            }
        }

        private void listView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void comboBoxRutas_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            int seleccion = comboBoxRutas.SelectedIndex;
            seleccionado = lr[seleccion];

            label4InfoRuta.Text = seleccionado.Name
                + "\n" + "Inicio: " + seleccionado.Start + "\n" + "Fin: " + seleccionado.End
                + "\n" + "Distancia: " + seleccionado.Distance + "\n" + "Desnivel: " + seleccionado.Ramp
                + "\n" + "Dificultad: " + seleccionado.Difficulty;

        }

        private void buttonAñadirRuta_Click(object sender, EventArgs e)
        {
            contador++;
            listView1.Items.Add(seleccionado.Name);
            if(radioButton1dia.Checked == true && contador != 0)
            {
                buttonAñadirRuta.Enabled = false;
            }

            
        }

        private void CrearRuta_Click(object sender, EventArgs e)
        {
            this.Close();
            CrearRuta crearRuta = new CrearRuta(service);
            crearRuta.ShowDialog();
           

        }

        private void buttonCrearEvento_Click(object sender, EventArgs e)
        {
            Member m = service.lastLogin();
            DateTime fin = dateTimePickerFin.Value;
            DateTime inicio = dateTimePickerIni.Value;
            if (descripcionEvento.Text == "")
            {
                MessageBox.Show("Añade una descripción al evento", "Error");

            }
          
            if (radioButton1dia.Enabled == true && inicio.Date > DateTime.Today.Date) {


                String descripcion = descripcionEvento.Text;
                Member responsable = service.lastLogin();
                Route r = service.findRouteByName(comboBoxRutas.SelectedText);
                OneDayEvent ev = new OneDayEvent(descripcion, inicio, responsable, r);
                service.addOneDayEvent(ev);
                miseventos.Items.Add(ev.Description);
                m.Events.Add(ev);
                service.saveChanges();
            } 
           
           else if (radioButtonVariosdias.Enabled == true && inicio.Date > DateTime.Today.Date && fin.Date>inicio.Date)
            {
                
                String descripcion = descripcionEvento.Text;
                Member responsable = service.lastLogin();
                SomeDaysEvent ev = new SomeDaysEvent(descripcion, inicio, responsable, fin);
                service.addSomeDaysEvent(ev);
                miseventos.Items.Add(ev.Description);
                m.Events.Add(ev);
                service.saveChanges();
            }
            else
            {
                MessageBox.Show("Fecha anterior a la actual", "Error");
            }

        }

        private void buttonVolver_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void CrearEvento_Load(object sender, EventArgs e)
        {
            Member m = service.lastLogin();

            /*foreach (Event ev in m.Events)
            {
                miseventos.Items.Add(ev.Description);
            }*/
            lr = new List<Route>(service.getAllRoutes());
            foreach (Route ruta in lr)
            {
                comboBoxRutas.Items.Add(ruta.Name);
            }

            radioButton1dia.Checked = true;
        }
    }
}
