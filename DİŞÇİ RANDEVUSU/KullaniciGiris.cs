using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DİŞÇİ_RANDEVUSU
{
    public partial class KullaniciGiris : Form
    {
        public KullaniciGiris()
        {
            InitializeComponent();
        }
        SqlConnection baglanti = new SqlConnection("Server = DESKTOP-7OTS1EG; Database = db_DisciTakipProgrami; Trusted_Connection = True;");
        SqlDataReader dr;
        SqlCommand com;
        private void KullaniciGiris_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            string kullanici = textBox1.Text;
            int sifre = Convert.ToInt32(textBox2.Text);
            com = new SqlCommand();
            baglanti.Open();
            com.Connection = baglanti;
            com.CommandText = "Select * from kullanici where kullaniciAd='" + textBox1.Text + "' and kullaniciParola='" + textBox2.Text + "'";
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                
                HastaKayit gecis = new HastaKayit();
                gecis.Show();
                this.Hide();
            }
            else
            {
                MessageBox.Show("Hatalı Giriş");
            }
            dr.Close();
            baglanti.Close();
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {
           
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if(checkBox1.CheckState==CheckState.Checked)
            {
                textBox2.UseSystemPasswordChar = true;
                checkBox1.Text = "Gizle";
            }
            else if(checkBox1.CheckState==CheckState.Unchecked)
            {
                textBox2.UseSystemPasswordChar = false;
                checkBox1.Text = "Göster";
            }
        }
    }
}
