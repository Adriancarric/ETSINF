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
    public partial class ApuntarseAUnEvento : Form
    {
        private IBikeClubService service;
        List<Event> le;
        Event seleccionado;
        SomeDaysEvent some;
        OneDayEvent one;
        public ApuntarseAUnEvento(IBikeClubService service)
        {
            this.service = service;
            InitializeComponent();
            foreach (Event eve in service.getAllEvents())
            {
                foreach (Member m1 in eve.Members)
                {
                    if (m1.Equals(service.lastLogin()) && eve.StartDate.Date > DateTime.Today.Date)
                    {
                        listView1.Items.Add(eve.Description);
                    }
                }
            }



        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void listView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

            int seleccion = comboBox1.SelectedIndex;
            seleccionado = le[seleccion];

            label3.Text = seleccionado.ID + "\n" + "Fecha de inicio: " + seleccionado.StartDate.Date.ToString() + "\n" + "Responsable: " + seleccionado.Responsible.Name;
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void buttonApuntarse_Click(object sender, EventArgs e)
        {
            
            Member m = service.lastLogin();
            m.Events.Add(seleccionado);
            m.Events.Add(seleccionado);
            try
            {
                some = (SomeDaysEvent)seleccionado;
            }
            catch (InvalidCastException ex)
            {
            }
            if (some!=null)
                {
                    try { some.registerMember(m); service.saveChanges(); listView1.Items.Add(seleccionado.Description); } catch (BikeClubLib.BusinessLogic.Services.ServiceException ex1) { MessageBox.Show("REVISA LAS RESTRICCIONES DE EDAD"); }
                    
                } else
                {
                    one = (OneDayEvent)seleccionado;
                    try { one.registerMember(m); service.saveChanges(); listView1.Items.Add(seleccionado.Description); } catch (BikeClubLib.BusinessLogic.Services.ServiceException ex2) { MessageBox.Show("REVISA LAS RESTRICCIONES DE EDAD");  }
                    
                }
            
            
            
            String diffic = comboBox1.Text;

            /*if (m.BirthDate.AddYears(18).Date > DateTime.Today && diffic.Route.Difficulty.Equals(Difficulty.pro))
            {
                throw new ServiceException("Si eres menor de 18 no puedes hacer rutas pro");
            }
            else if (m1.BirthDate.AddYears(18).Date > DateTime.Today && (this.Route.Difficulty.Equals(Difficulty.medium) || this.Route.Difficulty.Equals(Difficulty.hard)))
            {
                if (this.Members.Contains(m1.Parent))
                {
                    this.Members.Add(m1);
                }
                else { throw new ServiceException("Para poder apuntarte a este evento, antes tiene que apuntarse tu padre"); }
            }
            else { this.Members.Add(m1); }
            */
        }





        private void buttonVolver_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void ApuntarseAUnEvento_Load(object sender, EventArgs e)
        {
            Member m = service.lastLogin();

            le = new List<Event>(service.getAllEvents());
            
            
            /*Añade los eventos al comboBox*/
            foreach(Event evento in service.getAllEvents())
            {
                comboBox1.Items.Add(evento.Description);

            }

           /* foreach(Event ev in m.Events)
            {
                listView1.Items.Add(ev.Description);
            }*/




        }
            
            }
        }
    

