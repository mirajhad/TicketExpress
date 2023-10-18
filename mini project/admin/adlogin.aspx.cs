using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace mini_project.admin
{
    public partial class adlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

             
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(cs);
            string user = TextBox1.Text;
            string pass = TextBox2.Text;
            con.Open();
            string query = "select * from ADMIN where EMAIL='" + user + "' and PASSWORD ='" + pass + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            try
            {
                SqlDataReader sdr = cmd.ExecuteReader();
            
           
            
                if (sdr.Read())
                {
                    Session["name"] = user;
                    Response.Redirect("/admin/default.aspx");
                    Session.RemoveAll();

                }
                else
                {
                    Label1.Text = "sorry your Email-id and Password does not match please try Again!!.";
                }
            }
             catch (SqlException ex)
            {
                Response.Write("<script>alert('sorry please activate your account first')</script>");
                Response.Redirect("reg.aspx", true);
                con.Close();
             }
            
            

        
            
        }
    }
}