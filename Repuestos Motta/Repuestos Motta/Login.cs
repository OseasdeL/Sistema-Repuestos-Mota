using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Repuestos_Motta
{
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
        }

        private void Login_Load(object sender, EventArgs e)
        {

        }

        private void bunifuImageButton1_Click(object sender, EventArgs e)
        {
            this.Close(); 
        }

        private void bunifuImageButton1_MouseMove(object sender, MouseEventArgs e)
        {
          // bunifuImageButton1.BackColor = Color.Red;
        }

        private void bunifuImageButton1_MouseLeave(object sender, EventArgs e)
        {
           // bunifuImageButton1.BackColor = Color.FromArgb(255,234,0);
        }

        private void bunifuImageButton2_Click(object sender, EventArgs e)
        {
            
        }

        private void bunifuImageButton2_MouseMove(object sender, MouseEventArgs e)
        {
            //bunifuImageButton2.BackColor = Color.LightSkyBlue;
        }

        private void bunifuImageButton2_MouseLeave(object sender, EventArgs e)
        {
           // bunifuImageButton2.BackColor = Color.RoyalBlue;
        }

        private void bunifuButton1_MouseMove(object sender, MouseEventArgs e)
        {
          //  bunifuButton1.BackColor = Color.Red;
        }

        private void bunifuThinButton21_Click(object sender, EventArgs e)
        {
       
        }

        private void bunifuLabel2_Click(object sender, EventArgs e)
        {

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void bunifuTextBox2_TextChange(object sender, EventArgs e)
        {

        }

        private void bunifuTextBox1_TextChange(object sender, EventArgs e)
        {

        }

        private void bunifuTextBox3_TextChange(object sender, EventArgs e)
        {

        }

        private void bunifuGradientPanel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void bunifuImageButton1_Click_1(object sender, EventArgs e)
        {
            this.Close(); 
        }

        private void bunifuThinButton21_Click_1(object sender, EventArgs e)
        {
            MenuPrincipal mn = new MenuPrincipal();
            mn.Show();
        }

        private void bunifuLabel2_Click_1(object sender, EventArgs e)
        {
            Form1 f1 = new Form1();
            f1.Show();
        }
    }
}
