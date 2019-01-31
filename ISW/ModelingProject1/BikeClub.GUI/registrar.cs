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
    
    public partial class Registrar : Form
    {
        private IBikeClubService service;
        
        public Registrar(IBikeClubService service)
        {
            this.service = service;
            InitializeComponent();
        }

        public void clear()
        {
            label_nombre.Text = "";
            label_usuario.Text = "";
            label_passw.Text = "";
            label_titular.Text = "";
            label_dni.Text = "";
            label_iban.Text = "";
        }

        protected virtual bool fieldsOK()
        {
            return
                !string.IsNullOrEmpty(label_nombre.Text) &&
                !string.IsNullOrEmpty(label_usuario.Text) &&
                !string.IsNullOrEmpty(label_passw.Text) &&
                !string.IsNullOrEmpty(label_passw.Text) &&
                !string.IsNullOrEmpty(label_titular.Text) &&
                !string.IsNullOrEmpty(label_dni.Text) &&
                !string.IsNullOrEmpty(label_iban.Text);
        }


        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click_1(object sender, EventArgs e)
        {

        }

        private void label1_Click_2(object sender, EventArgs e)
        {

        }

        private void label1_Click_3(object sender, EventArgs e)
        {

        }

    

        private void registrar_Load(object sender, EventArgs e)
        {

        }

        private void buttonEntrar_Click(object sender, EventArgs e)
        {
            Club c = service.returnClub();
            if (fieldsOK())
            {

                if (service.findMemberUsername(label_usuario.Text) != null)
                {
                    MessageBox.Show("La persona con este nomber de usuario ya está registrada", "Error");
                    /*Si es incorrecto, sale del método para volver a instroducir datos- Att. Samu :)*/
                    return;
                }
                if (service.findMemberById(label_dni.Text) != null)
                {
                    MessageBox.Show("La persona con este DNI ya está registrada", "Error");
                    /*Si es incorrecto, sale del método para volver a instroducir datos*/
                    return;
                }
                else
                {

                    String dni = label_dni.Text;
                    String nombre = label_nombre.Text;
                    String user = label_usuario.Text;
                    String pass = label_passw.Text;
                    String iban = label_iban.Text;
                    DateTime nacimiento = dateTimePicker1.Value;
                    int error = 0;
                    if ((DateTime.Today.Year - nacimiento.Year) < 18)
                    {
                        MessageBox.Show("Menor de 18 años, no es posible el registro", "Error");
                        error = 1;
                    }

                    if (dni.LongCount<Char>() != 9)
                    {
                        MessageBox.Show("DNI con tamaño incorrecto", "Error");
                        error = 1;
                    }
                    if (iban.LongCount<Char>() != 24)
                    {
                        MessageBox.Show("IBAN con tamaño incorrecto", "Error");
                        error = 1;
                    }
                    if (error == 0) {
                        Member m = new Member(dni, nombre, user, pass, iban, nacimiento, DateTime.Today);
                        double cuota = service.addMember(c, m);

                        MessageBox.Show("La cuota es: " + cuota);

                        this.Close();
                    }

                   



                }

            }
            else {
                MessageBox.Show("Rellenar campos vacios", "Error");
            }
            

        }

        private void buttonVolver_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void labelDatosBancarios_Click(object sender, EventArgs e)
        {

        }

        private void label_nombre_TextChanged(object sender, EventArgs e)
        {

        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {

        }

        private void label_usuario_TextChanged(object sender, EventArgs e)
        {

        }

        private void label_passw_TextChanged(object sender, EventArgs e)
        {

        }

        private void label_titular_TextChanged(object sender, EventArgs e)
        {

        }

        private void label_dni_TextChanged(object sender, EventArgs e)
        {

        }

        private void label_iban_TextChanged(object sender, EventArgs e)
        {

        }
         
}
}
