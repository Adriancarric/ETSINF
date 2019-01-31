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
    public partial class InscribirHijo : Form
    {
        private IBikeClubService service;
        public InscribirHijo(IBikeClubService service)
        {
            this.service = service;
            InitializeComponent();
            /* Member m = service.lastLogin();
             label1.Text = m.Name;
             labelnomTitular.Text = m.Name;
             labelDniTit.Text = m.ID;
             labelibanhijo.Text = m.IBAN;*/
        }

        public void clear()
        {
            textBoxNombreCompleto.Text = "";
            textBoxUsuario.Text = "";
            textBoxContraseña.Text = "";
            textBoxdni.Text = "";

        }

        protected virtual bool fieldsOK()
        {
            return
                !string.IsNullOrEmpty(textBoxNombreCompleto.Text) &&
                !string.IsNullOrEmpty(textBoxUsuario.Text) &&
                !string.IsNullOrEmpty(textBoxContraseña.Text) &&
                !string.IsNullOrEmpty(textBoxdni.Text);
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void labelNombreCompleto_Click(object sender, EventArgs e)
        {

        }

        private void labelFechaNacimiento_Click(object sender, EventArgs e)
        {

        }

        private void labelUsuario_Click(object sender, EventArgs e)
        {

        }

        private void textBoxUsuario_TextChanged(object sender, EventArgs e)
        {

        }

        private void labelContraseña_Click(object sender, EventArgs e)
        {

        }

        private void textBoxContraseña_TextChanged(object sender, EventArgs e)
        {

        }

        private void labelDatosPersonales_Click(object sender, EventArgs e)
        {

        }

        private void labelDatosBancarios_Click(object sender, EventArgs e)
        {

        }

        private void labelNombreTitular_Click(object sender, EventArgs e)
        {

        }



        private void labelDNITitular_Click(object sender, EventArgs e)
        {

        }



        private void labelIBAN_Click(object sender, EventArgs e)
        {

        }



        private void labelCuota_Click(object sender, EventArgs e)
        {

        }

        private void buttonAceptar_Click(object sender, EventArgs e)
        {
            Club c = service.returnClub();
            if (fieldsOK())
            {
                if (service.findMemberUsername(textBoxUsuario.Text) != null)
                {
                    MessageBox.Show("La persona con este nomber de usuario ya está registrada", "Error");
                    /*Si es incorrecto, sale del método para volver a instroducir datos- Att. Samu :)*/
                    return;
                }
                if (service.findMemberById(textBoxdni.Text) != null)
                {
                    MessageBox.Show("La persona con este DNI ya está registrada", "Error");
                    /*Si es incorrecto, sale del método para volver a instroducir datos- Att. Samu :)*/
                    return;
                }

                else
                {
                    String nombre = textBoxNombreCompleto.Text;
                    DateTime nacimiento = dateTimePicker1.Value;
                    String dni = textBoxdni.Text;
                    String user = textBoxUsuario.Text;
                    String pass = textBoxContraseña.Text;
                    String iban_padre = labelibanhijo.Text;
                    String nombrep = label1.Text;
                    String dnip = labelDniTit.Text;
                    if (dni.LongCount<Char>() != 9)
                    {
                        MessageBox.Show("DNI con tamaño incorrecto", "Error");
                        return;
                    }

                    Member padre = service.findMemberById(dnip);

                    Member h = new Member(dni, nombre, user, pass, iban_padre, DateTime.Today,null, nacimiento,padre);

                    

                    String userp = padre.Login;
                    String passp = padre.Password;
                    DateTime nacimientop = padre.BirthDate;

                    padre.addSon(padre, h);



                    Socios socios = new Socios(service);



                    double cuota = service.addSon(c, padre, h);

                    MessageBox.Show("La cuota es: " + cuota);

                    this.Close();
                    socios.Show();

                    //service.addSon(c, p, h);




                }

            }
        }


        private void buttonVolver_Click(object sender, EventArgs e)
        {

            Socios socios = new Socios(service);
            this.Close();
            socios.Show();

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void InscribirHijo_Load(object sender, EventArgs e)
        {
            Member m = service.lastLogin();
            label1.Text = m.Name;
            labelnomTitular.Text = m.Name;
            labelDniTit.Text = m.ID;
            labelibanhijo.Text = m.IBAN;
        }

        private void label1_Click_1(object sender, EventArgs e)
        {

        }

        private void labelDniTit_Click(object sender, EventArgs e)
        {

        }

        private void labelibanhijo_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click_2(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void textBoxdni_TextChanged(object sender, EventArgs e)
        {

        }
    }
}

