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
    public partial class LOGIN : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
             
        }

      

       
        protected void Button1_Click1(object sender, EventArgs e)
        {


          
                string s = "1";
                string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

                SqlConnection con = new SqlConnection(cs);
                string user = TextBox1.Text;
                string pass = TextBox2.Text;
                con.Open();
                string query = "select * from userdata where email='" + user + "' and password ='" + pass + "' and status = '" + s + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                try
                {
                    SqlDataReader sdr = cmd.ExecuteReader();



                    if (sdr.Read())
                    {
                        Session["name"] = user;
                        Response.Redirect("/user/booking.aspx");
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

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

            string clientid = "453635246461-d1vl0cmeqojnu9ouktoo8lqdklcji46o.apps.googleusercontent.com";
            string clientsecret = "70icjFnzN664PBFfzsIVMMto";
            string redirection_url = "http://localhost:49757/user/booking1.aspx";
            string url = "https://accounts.google.com/o/oauth2/v2/auth?scope=profile&include_granted_scopes=true&redirect_uri=" + redirection_url + "&response_type=code&client_id=" + clientid + "";
            Response.Redirect(url);
        }
    }
}