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
using static System.Windows.Forms.VisualStyles.VisualStyleElement.Button;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace DİŞÇİ_RANDEVUSU
{
    public partial class RandevuKayit : Form
    {
        public RandevuKayit()
        {
            InitializeComponent();
        }
        SqlConnection baglanti = new SqlConnection("Server = DESKTOP-7OTS1EG; Database = db_DisciTakipProgrami; Trusted_Connection = True;");
        private void textBox25_TextChanged(object sender, EventArgs e)
        {
        }

        private void button2_Click(object sender, EventArgs e)
        {
            int hastaid = Convert.ToInt32(textBox17.Text);  
            
            string sikayet = textBox18.Text;
           
            string dis = comboBox1.Text;
            int sonrakirandevuid = Convert.ToInt32(textBox19.Text);
         
            bool aktifmi = checkBox4.Checked;
            string aciklama = textBox20.Text;
            string connString = "Server = DESKTOP-7OTS1EG; Database = db_DisciTakipProgrami; Trusted_Connection = True;";
            SqlConnection conn = new SqlConnection(connString);
            string komuti = "INSERT INTO [dbo].[randevu] ([hastaID],[randevuTarih],[randevuHastaSikayet] ,[randevuHangiDis],[randevuSonrakiRandevuID],[randevuAktifMi],[randevuAciklama]) " +
                "Values("+hastaid+ ",'" + dateTimePicker2.Value + "','"+ sikayet+ "','"+ dis+ "',"+ sonrakirandevuid + ",'" + aktifmi + "', '" + aciklama + "')";
            SqlCommand komut = new SqlCommand(komuti, conn);
            try
            {
                conn.Open();

                MessageBox.Show(komuti);
                MessageBox.Show(komut.ExecuteNonQuery() + " Adet randevu eklendi");
            }
            catch (Exception hata)
            {
                MessageBox.Show("randevu eklenmedi" + hata.Message.ToString());
            }
            finally { conn.Close(); }
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void RandevuKayit_Load(object sender, EventArgs e)
        {
            comboBox1.Items.Add("Üst Kesici Diş");
            comboBox1.Items.Add("Alt Kesici Diş");
            comboBox1.Items.Add("Üst Köpek Diş");
            comboBox1.Items.Add("Alt Köpek Diş");
            comboBox1.Items.Add("Üst Küçük Azı Diş");
            comboBox1.Items.Add("Alt Küçük Azı Diş");
            comboBox1.Items.Add("Üst Büyük Azı Diş");
            comboBox1.Items.Add("Alt Büyük Azı Diş");
            comboBox1.Items.Add("Yirmi Yaş Diş");
        }

        private void button7_Click(object sender, EventArgs e)
            
        {
            

            listBox1.Items.Clear();
            SqlCommand cmd = new SqlCommand("select hasta.hastaID,hasta.[hastaAd], hasta.[hastaSoyad], randevu.[randevuTarih] from randevu as randevu JOIN hastalar as hasta on hasta.hastaID=randevu.hastaID  where randevuTarih='" + dateTimePicker1.Value+"'" ,baglanti);
            
            if (baglanti.State == ConnectionState.Closed)
            {
                baglanti.Open();
            }
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                listBox1.Items.Add(dr[0].ToString() + " " + dr[1].ToString()+" "+dr[2].ToString() + " " + dr[3].ToString()) ;

            }
            baglanti.Close();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            listBox2.Items.Clear();
            SqlCommand cmd = new SqlCommand("Select * from hastalar where   hastaTcKimlikNo like '%" + textBox1.Text + "%'", baglanti);
            if (baglanti.State == ConnectionState.Closed)
            {
                baglanti.Open();
            }
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                listBox2.Items.Add(dr[0].ToString() + " " + dr[1].ToString() + " " + dr[2].ToString() + " " + dr[3].ToString());

            }
            baglanti.Close();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            int hastaid = Convert.ToInt32(textBox17.Text);

            string sikayet = textBox18.Text;

            string dis = comboBox1.Text;
            int sonrakirandevuid = Convert.ToInt32(textBox19.Text);

            bool aktifmi = checkBox4.Checked;
            string aciklama = textBox20.Text;
            string connString = "Server = DESKTOP-7OTS1EG; Database = db_DisciTakipProgrami; Trusted_Connection = True;";
            SqlConnection conn = new SqlConnection(connString);
            string komuti = "UPDATE [dbo].[randevu] SET [hastaID]="+hastaid+" ,[randevuTarih]='"+dateTimePicker2.Value+"',[randevuHastaSikayet]='"+sikayet+" ',[randevuHangiDis]='"+dis+"' ,[randevuSonrakiRandevuID]="+sonrakirandevuid+" ,[randevuAktifMi]='" + aktifmi + "',[randevuAciklama]='" + aciklama + "'";
            SqlCommand komut = new SqlCommand(komuti, conn);
            try
            {
                conn.Open();

                MessageBox.Show(komuti);
                MessageBox.Show(komut.ExecuteNonQuery() + " Adet randevu güncellendi");
            }
            catch (Exception hata)
            {
                MessageBox.Show("randevu güncellendi" + hata.Message.ToString());
            }
            finally { conn.Close(); }
        }

        private void button6_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from randevu where hastaID='" + textBox17.Text + "'", baglanti);
            if (baglanti.State == ConnectionState.Closed)
            {
                baglanti.Open();
            }
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                
                dateTimePicker2.Value = Convert.ToDateTime(dr[2]);
                textBox18.Text = dr[3].ToString();
                comboBox1.Text=dr[4].ToString();  
                textBox19.Text=dr[5].ToString();    
                checkBox4.Checked = (Convert.ToInt32(dr["randevuAktifMi"]) == 1) ? true : false;
                textBox20.Text = dr[7].ToString();
                
              
            }
            baglanti.Close();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            string connString = "Server = DESKTOP-7OTS1EG; Database = db_DisciTakipProgrami; Trusted_Connection = True;";
            SqlConnection conn = new SqlConnection(connString);
            string komuti = "DELETE [dbo].[randevu] WHERE hastaID='" + textBox17.Text + "'";
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

        private void button1_Click(object sender, EventArgs e)
        {
            groupBox4.Visible = true;
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
