using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient;

namespace mini_project
{
    public partial class otp : System.Web.UI.Page

    {
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string otp1 = TextBox1.Text;

            SqlConnection con = new SqlConnection(cs);
          
            
            con.Open();
            string query = "select * from userdata where otp='" + otp1 + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            try
            {
                SqlDataReader sdr = cmd.ExecuteReader();

                if (sdr.Read())
                {



                    update();
                    Response.Redirect("login.aspx", true);




                }
                else
                {
                   
                    Label1.Text = "sorry your entered otp is wrong please activate your account first.If you have not received otp then go to forget  password .";
                }
            }
            catch (SqlException ex)
            {
                Response.Write("<script>alert('sorry please activate your account first')</script>");
                con.Close();
            }
        }


        public  void update()
        {
            string otp1 = TextBox1.Text;
            string s = "1";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            string query = "UPDATE userdata SET status ='" + s + "' WHERE otp='" + otp1 + "'";
            SqlCommand cmd = new SqlCommand(query, con);

            SqlDataReader sdr = cmd.ExecuteReader();
            con.Close();
        }

        }
    }
