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
    public partial class payment : System.Web.UI.Page
    {
        static string reguser;
        public static int i;
        public static string var;
        public static string var1;
       // SqlConnection con;
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        DataRow dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            try { 

                reguser = Session["name"] as string;
            var = Request.QueryString["x"];
            var1 =Request.QueryString["y"];
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(cs);
            da = new SqlDataAdapter("select * from TICKETBOOKING where PNR='" + var1 + "' and TRAINNO ='" + var + "' and REGUSER = '" + reguser + "' ", con);
            da.Fill(dt);
            i = 0;
            dr = dt.Rows[i];
               
            TextBox1.Text = Convert.ToString(dr[0]);
            TextBox2.Text = Convert.ToString(dr[1]);
            TextBox3.Text = Convert.ToString(dr[7]);
           /*
            TextBox1.Text = var;
            TextBox2.Text = var1;
            TextBox3.Text = reguser;*/

          
            }
            catch(Exception ex){}
   
            
           
           
           
          }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string ord = TextBox1.Text;
                string cus = TextBox2.Text;
            string email = TextBox3.Text;
            string phone = TextBox4.Text;
            string am = TextBox5.Text;
            String merchantKey = "oWXrpW2H4b#F%HX!";
            Dictionary<string, string> parameters = new Dictionary<string, string>();
            parameters.Add("MID", "nqGubj92554378032962");
            parameters.Add("CHANNEL_ID", "WEB");
            parameters.Add("INDUSTRY_TYPE_ID", "Retail");
            parameters.Add("WEBSITE", "WEBSTAGING");
            parameters.Add("EMAIL", email);
            parameters.Add("MOBILE_NO", phone);
            parameters.Add("CUST_ID", cus);
            parameters.Add("ORDER_ID", ord);
            parameters.Add("TXN_AMOUNT", am);
            parameters.Add("CALLBACK_URL", "http://localhost:49757/user/donebooking.aspx"); //This parameter is not mandatory. Use this to pass the callback url dynamically.

            string checksum = CheckSum.generateCheckSum(merchantKey, parameters);
            string paytmURL = "https://securegw-stage.paytm.in/theia/processTransaction?orderid=";

            string outputHTML = "<html>";
            outputHTML += "<head>";
            outputHTML += "<title>Merchant Check Out Page</title>";
            outputHTML += "</head>";
            outputHTML += "<body>";
            outputHTML += "<center><h1>Please do not refresh this page...</h1></center>";
            outputHTML += "<form method='post' action='" + paytmURL + "' name='f1'>";
            outputHTML += "<table border='1'>";
            outputHTML += "<tbody>";
            foreach (string key in parameters.Keys)
            {
                outputHTML += "<input type='hidden' name='" + key + "' value='" + parameters[key] + "'>";
            }
            outputHTML += "<input type='hidden' name='CHECKSUMHASH' value='" + checksum + "'>";
            outputHTML += "</tbody>";
            outputHTML += "</table>";
            outputHTML += "<script type='text/javascript'>";
            outputHTML += "document.f1.submit();";
            outputHTML += "</script>";
            outputHTML += "</form>";
            outputHTML += "</body>";
            outputHTML += "</html>";
            Response.Write(outputHTML);
 
            }
            catch(Exception ex){}
            
        }
    }
}