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
using static System.Windows.Forms.VisualStyles.VisualStyleElement;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.Button;

namespace DİŞÇİ_RANDEVUSU
{
    public partial class TedaviKayit : Form
    {
        public TedaviKayit()
        {
            InitializeComponent();
        }
        SqlConnection baglanti = new SqlConnection("Server = DESKTOP-7OTS1EG; Database = db_DisciTakipProgrami; Trusted_Connection = True;");
        private void button7_Click(object sender, EventArgs e)
        {
            listBox2.Items.Clear();
            SqlCommand cmd = new SqlCommand("Select * from hastalar where   hastaTcKimlikNo like '%" + textBox22.Text + "%'", baglanti);
            if (baglanti.State == ConnectionState.Closed)
            {
                baglanti.Open();
            }
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                listBox2.Items.Add(dr[0].ToString() + " " + dr[1].ToString() + " " + dr[2].ToString() + " " + dr[3].ToString() );

            }
            baglanti.Close();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from randevu where hastaID='" + textBox23.Text + "'", baglanti);
            if (baglanti.State == ConnectionState.Closed)
            {
                baglanti.Open();
            }
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                textBox1.Text = (dr[4].ToString());


            }
            baglanti.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            int hastaid = Convert.ToInt32(textBox23.Text);

            string tedaviad = textBox12.Text;

            string yapilanis = textBox13.Text;
            string epikiriz = textBox14.Text;
            string recete = textBox15.Text;
            bool aktifmi = checkBox3.Checked;
            string aciklama = textBox16.Text;

            string connString = "Server = DESKTOP-7OTS1EG; Database = db_DisciTakipProgrami; Trusted_Connection = True;";
            SqlConnection conn = new SqlConnection(connString);
            string komuti = "INSERT INTO   [dbo].[tedavi]  ( [hastaID],[tedaviAd],[tedaviYapilanIs],[tedaviEpikiriz],[tedaviRecete],[tedaviAktifMi],[tedaviAciklama]) " +
                "Values("+hastaid+",'" + tedaviad + "','" + yapilanis + "','" + epikiriz+ "','" + recete + "','" + aktifmi + "', '" + aciklama + "')";
            
            SqlCommand komut = new SqlCommand(komuti, conn);
            

            try
            {
                conn.Open();

                MessageBox.Show(komuti);
                MessageBox.Show(komut.ExecuteNonQuery() + " Adet tedavi eklendi");
            }
            catch (Exception hata)
            {
                MessageBox.Show("tedavi eklenmedi" + hata.Message.ToString());
            }
            finally { conn.Close(); }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            groupBox5.Visible = true;
        }

        private void button6_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from tedavi where hastaID='" + textBox23.Text + "'", baglanti);
            if (baglanti.State == ConnectionState.Closed)
            {
                baglanti.Open();
            }
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                textBox12.Text = (dr[2].ToString());
                textBox13.Text= (dr[3].ToString());
                textBox14.Text= (dr[4].ToString());
                textBox15.Text = (dr[5].ToString());
                checkBox3.Checked = (Convert.ToInt32(dr["tedaviAktifMi"]) == 1) ? true : false;
                textBox16.Text = (dr[7].ToString());
            }
            baglanti.Close();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            int hastaid = Convert.ToInt32(textBox23.Text);

            string tedaviad = textBox12.Text;

            string yapilanis = textBox13.Text;
            string epikiriz = textBox14.Text;
            string recete = textBox15.Text;
            bool aktifmi = checkBox3.Checked;
            string aciklama = textBox16.Text;
            string connString = "Server = DESKTOP-7OTS1EG; Database = db_DisciTakipProgrami; Trusted_Connection = True;";
            SqlConnection conn = new SqlConnection(connString);
            string komuti = "UPDATE [dbo].[tedavi] SET [hastaID]=" + hastaid + " ,[tedaviAd]='" +tedaviad + "',[tedaviYapilanIs]='" + yapilanis + " ',[tedaviEpikiriz]='" + epikiriz + "' ,[tedaviRecete]='" + recete + "' ,[tedaviAktifMi]='" + aktifmi + "',[tedaviAciklama]='" + aciklama + "'";
            SqlCommand komut = new SqlCommand(komuti, conn);
            try
            {
                conn.Open();

                MessageBox.Show(komuti);
                MessageBox.Show(komut.ExecuteNonQuery() + " Adet tedavigüncellendi");
            }
            catch (Exception hata)
            {
                MessageBox.Show("tedavi güncellendi" + hata.Message.ToString());
            }
            finally { conn.Close(); }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            string connString = "Server = DESKTOP-7OTS1EG; Database = db_DisciTakipProgrami; Trusted_Connection = True;";
            SqlConnection conn = new SqlConnection(connString);
            string komuti = "DELETE [dbo].[tedavi] WHERE hastaID='" + textBox23.Text + "'";
            SqlCommand komut = new SqlCommand(komuti, conn);
            try
            {
                conn.Open();

                MessageBox.Show(komuti);
                MessageBox.Show(komut.ExecuteNonQuery() + "  randevu silindi");
            }
            catch (Exception hata)
            {
                MessageBox.Show("randevu silinmedi" + hata.Message.ToString());
            }
            finally { conn.Close(); }
        }

        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            HastaKayit hastaForm = new HastaKayit();

            hastaForm.Show();
            this.Hide();
        }

        private void toolStripButton2_Click(object sender, EventArgs e)
        {
            RandevuKayit hastaForm = new RandevuKayit();

            hastaForm.Show();
            this.Hide();
        }

        private void toolStripButton3_Click(object sender, EventArgs e)
        {
            TedaviKayit hastaForm = new TedaviKayit();

            hastaForm.Show();
            this.Hide();
        }
    }
}
