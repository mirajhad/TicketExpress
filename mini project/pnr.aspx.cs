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
    public partial class pnr : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(cs);
            string user = TextBox1.Text;
            
            con.Open();
            string query = "select PNR from TICKETBOOKING where PNR='" + user + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            try
            {
                SqlDataReader sdr = cmd.ExecuteReader();



                if (sdr.Read())
                {
                    GridView1.Visible = true;

                }
                else
                {
                    Label1.Text = "sorrry eneter PNR is not matched please try again";
                }
                con.Close();
            }
            catch (SqlException ex)
            {
          
               
            }

        }
    }
}