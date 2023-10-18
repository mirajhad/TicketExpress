using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Data;
using System.Text;

namespace mini_project.admin
{
    public partial class train : System.Web.UI.Page
    {
        static string a1;
        static string a2;
        static string a3;
        static string a4;
        static string a5;
        static string a6;
        static string a7;
        static string a8;
        static string a9;
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = true;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            a1 = TextBox1.Text;
            a2 = TextBox2.Text;
            a3 = TextBox3.Text;
            a4 = TextBox4.Text;
            a5 = TextBox5.Text;
            a6 = TextBox6.Text;
            a7 = TextBox7.Text;
            a8 = TextBox8.Text;
            a9 = TextBox9.Text;
            string query = "insert into Train(trainno,trainname,source,destination,jdate,class1,class2,class3,class4) values('" + a1 + "','" + a2 + "','" + a3 + "','" + a4 + "','" + a5 + "','" + a6 + "','" + a7 + "','" + a8 + "','" + a9 + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            try
            {
                int result = cmd.ExecuteNonQuery();
                con.Close();
                if (result >= 1)
                {
                    Response.Write("<script>alert('your data  succesfully inserted.')</script>");
                }
                else
                {
                    Response.Write("<script>alert('your data not succesfully inserted pleasse try again!!.')</script>");

                }

            }
            catch (SqlException ex)
            {
      
               

            }
        }
    }
}