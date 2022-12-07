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
    public partial class HastaKayit : Form
    {
        SqlConnection baglanti = new SqlConnection("Server = DESKTOP-7OTS1EG; Database = db_DisciTakipProgrami; Trusted_Connection = True;");
        public HastaKayit()
        {
            InitializeComponent();
        }

        private void label9_Click(object sender, EventArgs e)
        {

        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void HastaKayit_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select Count(*) from hastalar", baglanti);
            if (baglanti.State == ConnectionState.Closed)
            {
                baglanti.Open();
            }
            label2.Text = cmd.ExecuteScalar().ToString();
            baglanti.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string ad = textBox1.Text;
            string soyad = textBox2.Text;
            string tc = textBox3.Text;
           
            string tel = textBox4.Text;
            string adres = textBox5.Text;
            string kan = textBox6.Text;
            int ilid = Convert.ToInt32(textBox7.Text);
            int ilceid = Convert.ToInt32(textBox8.Text);   
            int cinsiyetid= Convert.ToInt32(textBox9.Text);
            bool aktifmi = checkBox1.Checked;
            string aciklama = textBox10.Text;
            string connString = "Server = DESKTOP-7OTS1EG; Database = db_DisciTakipProgrami; Trusted_Connection = True;";
            SqlConnection conn = new SqlConnection(connString);
            string komuti = "INSERT INTO [dbo].[hastalar] ([hastaAd],[hastaSoyad],[hastaTcKimlikNo],[hastaDogumTarihi],[hastaTel],[hastaAdres],[hastaKanGrubu],[IlId],[IlceId],[CinsiyetID],[hastaAktifMi],[hastaAciklama]) " +
                "Values('" + ad + "','" + soyad + "','" + tc + "','" + dateTimePicker1.Value + "','" + tel + "','" + adres+ "','" + kan+ "'," + ilid + "," + ilceid + "," + cinsiyetid + ",'" + aktifmi+ "', '" + aciklama+ "')";
            SqlCommand komut = new SqlCommand(komuti, conn);
            try
            {
                conn.Open();

                MessageBox.Show(komuti);
                MessageBox.Show(komut.ExecuteNonQuery() + " Adet kişi eklendi");
            }
            catch (Exception hata)
            {
                MessageBox.Show("kişi eklenmedi" + hata.Message.ToString());
            }
            finally { conn.Close(); }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            groupBox1.Visible = true;
        }

        private void button5_Click(object sender, EventArgs e)
        {
            listBox1.Items.Clear();
            SqlCommand cmd = new SqlCommand("Select * from hastalar where hastaAd like '%" + textBox11.Text + "%'  OR hastaSoyad like '%" + textBox5.Text + "%' OR hastaTcKimlikNo like '%" + textBox5.Text + "%'", baglanti);
            if (baglanti.State == ConnectionState.Closed)
            {
                baglanti.Open();
            }
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                listBox1.Items.Add(dr[0].ToString() + " " + dr[1].ToString() + " " + dr[2].ToString() + " " + dr[3].ToString());

            }
            baglanti.Close();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from hastalar where hastaID='" + textBox12.Text + "'", baglanti);
            if (baglanti.State == ConnectionState.Closed)
            {
                baglanti.Open();
            }
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                textBox1.Text = dr[1].ToString();
                textBox2.Text = dr[2].ToString();
                textBox3.Text = dr[3].ToString();
                dateTimePicker1.Value = Convert.ToDateTime(dr[4]);
                textBox4.Text= dr[5].ToString();
                textBox5.Text= dr[6].ToString();
                textBox6.Text= dr[7].ToString();
                textBox7.Text = dr[8].ToString();
                textBox8.Text = dr[9].ToString();
                textBox9.Text= dr[10].ToString();   
                checkBox1.Checked = (Convert.ToInt32(dr["hastaAktifMi"]) == 1) ? true : false;
                textBox10.Text = dr[12].ToString();
            }
            baglanti.Close();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            string ad = textBox1.Text;
            string soyad = textBox2.Text;
            string tc = textBox3.Text;

            string tel = textBox4.Text;
            string adres = textBox5.Text;
            string kan = textBox6.Text;
            int ilid = Convert.ToInt32(textBox7.Text);
            int ilceid = Convert.ToInt32(textBox8.Text);
            int cinsiyetid = Convert.ToInt32(textBox9.Text);
            bool aktifmi = checkBox1.Checked;
            string aciklama = textBox10.Text;
            string connString = "Server = DESKTOP-7OTS1EG; Database = db_DisciTakipProgrami; Trusted_Connection = True;";
            SqlConnection conn = new SqlConnection(connString);
            string komuti = "UPDATE [dbo].[hastalar] SET [hastaAd] = '" + ad + "', [hastaSoyad]='" + soyad + "',[hastaTcKimlikNo]='" + tc + "',[hastaDogumTarihi]='" + dateTimePicker1.Value + "',[hastaTel]='" + tel + "',[hastaAdres]='" + adres+ "',[hastaKanGrubu]='" + kan+ "',[IlId]=" + ilid + ",[IlceId]=" + ilceid + ",[CinsiyetID]=" + cinsiyetid + ",[hastaAktifMi]='" + aktifmi+ "',[hastaAciklama]='" + aciklama+ "'";
            SqlCommand komut = new SqlCommand(komuti, conn);
            try
            {
                conn.Open();

                MessageBox.Show(komuti);
                MessageBox.Show(komut.ExecuteNonQuery() + " Adet hasta güncellendi");
            }
            catch (Exception hata)
            {
                MessageBox.Show("hasta güncellendi" + hata.Message.ToString());
            }
            finally { conn.Close(); }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            string connString = "Server = DESKTOP-7OTS1EG; Database = db_DisciTakipProgrami; Trusted_Connection = True;";
            SqlConnection conn = new SqlConnection(connString);
            string komuti = "DELETE [dbo].[hastalar] WHERE hastaID='" + textBox12.Text + "'";
            SqlCommand komut = new SqlCommand(komuti, conn);
            try
            {
                conn.Open();

                MessageBox.Show(komuti);
                MessageBox.Show(komut.ExecuteNonQuery() + "  hasta silindi");
            }
            catch (Exception hata)
            {
                MessageBox.Show("hasta silinmedi" + hata.Message.ToString());
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

        private void toolStripButton1_Click_1(object sender, EventArgs e)
        {
            HastaKayit hastaForm = new HastaKayit();

            hastaForm.Show();
            this.Hide();
        }

        private void toolStripButton2_Click_1(object sender, EventArgs e)
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
