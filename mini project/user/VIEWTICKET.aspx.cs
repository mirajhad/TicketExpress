using paytm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;


using System.Configuration;

using System.Net;
using System.Net.Mail;

using System.Text;

namespace mini_project.user
{
    public partial class VIEWTICKET : System.Web.UI.Page
    {
       // static string reguser;
        public static int i;
       // public static string var;
        public static string var1;
        // SqlConnection con;
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        DataRow dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] == null && Request.QueryString["PNR"]==null)
            {
                Response.Redirect("../login.aspx");

            }
            try
            {

               // reguser = Session["name"] as string;
               
                var1 = Request.QueryString["PNR"];
               // var1 = Request.QueryString["y"];
                Random r = new Random();
                int num = r.Next(88899);
                string data = num.ToString();
                string x = Label4.Text = "KVDR" +data;
                 Label22.Text = x;
                string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

                SqlConnection con = new SqlConnection(cs);
                da = new SqlDataAdapter("select * from TICKETBOOKING where PNR='" + var1 + "'", con);
                da.Fill(dt);
                i = 0;
                dr = dt.Rows[i];

                Label1.Text = Convert.ToString(dr[0]);
                Label2.Text = Convert.ToString(dr[1]);
                Label3.Text = Convert.ToString(dr[2]);
                Label5.Text = Convert.ToString(dr[5]);
                Label6.Text = Convert.ToString(dr[6]);
                Label7.Text = Convert.ToString(dr[3]);
                Label8.Text = Convert.ToString(dr[5]);
                Label9.Text = Convert.ToString(dr[4]);
                Label13.Text = Convert.ToString(dr[8]);
                Label14.Text = Convert.ToString(dr[9]);
                Label15.Text = Convert.ToString(dr[10]);
                Label16.Text = Convert.ToString(dr[11]);
                Label17.Text = Convert.ToString(dr[12]);
                Label18.Text = Convert.ToString(dr[13]);
                Label19.Text = Convert.ToString(dr[14]);
                Label20.Text = Convert.ToString(dr[15]);
                Label21.Text = Convert.ToString(dr[16]);
                Label23.Text = Convert.ToString(dr[0]);
                Label24.Text = Convert.ToString(dr[1]);
                Label11.Text = "500";
                Label12.Text = "120";
                Label25.Text = "620";


                /*
                 TextBox1.Text = var;
                 TextBox2.Text = var1;
                 TextBox3.Text = reguser;*/


            }
            catch (Exception ex) { }
   
        }
    }
}