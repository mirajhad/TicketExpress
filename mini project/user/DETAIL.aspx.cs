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
    public partial class DETAIL : System.Web.UI.Page
    {
        static string trainno;
        static string trainname;
        static string source;
        static string des;
        static string doj;
        static string pasclass;
        static string reguser;
        static string USER1;
         static string GENDER1;
        static string AGE1;
        static string USER2;
        static string GENDER2;
        static string AGE2;
        static string USER3;
        static string GENDER3;
        static string AGE3;
        static string USER4;
        static string GENDER4;
        static string AGE4;
        static string USER5;
        static string GENDER5;
        static string AGE5;
        
        public static int i;
        public static string var;
        //SqlConnection con;
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        DataRow dr;
       
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["name"] == null)
            {
                Response.Redirect("../login.aspx");

            }
            var = Request.QueryString["trainno"];
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(cs);
            da = new SqlDataAdapter("select * from Train where trainno='" + var + "'", con);
            da.Fill(dt);
            i = 0;
            dr = dt.Rows[i];

            TextBox17.Text = Convert.ToString(dr[0]);
            TextBox11.Text = Convert.ToString(dr[1]);
            TextBox18.Text = Convert.ToString(dr[2]);
            TextBox19.Text = Convert.ToString(dr[3]);
            TextBox20.Text = Convert.ToString(dr[4]);
           // TextBox21.Text = Convert.ToString(dr[5]);

            trainno = Convert.ToString(dr[0]);
             trainname = Convert.ToString(dr[1]);
             source = Convert.ToString(dr[2]);
            des = Convert.ToString(dr[3]);
            doj = Convert.ToString(dr[4]);
            pasclass = Convert.ToString(dr[5]);
            reguser =  Session["name"] as string;
          /*  if (trainname == "NA")
            {
                Response.Redirect("/user/booking.aspx");
            }*/
           
            

        }

        protected void Button1_Click(object sender, System.EventArgs e)
        {

            USER1 = TextBox6.Text;
            GENDER1 = DropDownList1.SelectedItem.Value;
            AGE1 = TextBox7.Text;
            USER2 = TextBox8.Text;
            GENDER2 = DropDownList2.SelectedItem.Value;
            AGE2 = TextBox9.Text;
            USER3 = TextBox10.Text;
            GENDER3 = DropDownList3.SelectedItem.Value;
            AGE3 = TextBox12.Text;
            USER4 = TextBox13.Text;
            GENDER4 = DropDownList4.SelectedItem.Value;
            AGE4 = TextBox14.Text;
            USER5 = TextBox1.Text;
            GENDER5 = DropDownList5.SelectedItem.Value;
            AGE5 = TextBox2.Text;

            string s = "1";
            Random r = new Random();
            int num = r.Next(88899999);
            string data = num.ToString();
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);

            string query = "insert into TICKETBOOKING(PNR,TRAINNO,TRAINNAME,SOURCE,DES,DOJ,CLASS,REGUSER,USER1,GENDER1,AGE1,USER2,GENDER2,AGE2,USER3,GENDER3,AGE3,USER4,GENDER4,AGE4,USER5,GENDER5,AGE5)values('" + data + "','" + trainno + "','" + trainname + "','" + source + "','" + des + "','" + doj + "','" + pasclass + "','" + reguser + "','" + USER1 + "','" + GENDER1 + "','" + AGE1 + "','" + USER2 + "','" + GENDER2 + "','" + AGE2 + "','" + USER3 + "','" + GENDER3 + "','" + AGE3 + "','" + USER4 + "','" + GENDER4 + "','" + AGE4 + "','" + USER5 + "','" + GENDER5 + "','" + AGE5 + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            try
            {
                int result = cmd.ExecuteNonQuery();
                con.Close();
                if (result >= 1)
                {
                    Response.Redirect("payment.aspx?y=" + data + "&x=" + trainno);
                    Response.Redirect("payment.aspx");
                   // Response.Write("<script>alert('your data  succesfully booked')</script>");
                    string to = reguser;
                    

                    var fromAddress = new MailAddress("vivekpandey.nielit.gov.in@gmail.com", "From Name");
                    var toAddress = new MailAddress(to, "To Name");
                    const string fromPassword = "Vivek@123";
                    const string subject = "TICKET HAS BEEN SUCEESFULLY BOOKED";


                    string body = reguser + " YOUR PNR NUMBER IS :" + data;

                    var smtp = new SmtpClient
                    {
                        Host = "smtp.gmail.com",
                        Port = 587,
                        EnableSsl = true,
                        DeliveryMethod = SmtpDeliveryMethod.Network,
                        UseDefaultCredentials = false,
                        Credentials = new NetworkCredential(fromAddress.Address, fromPassword)
                    };
                    using (var message = new MailMessage(fromAddress, toAddress)
                    {
                        Subject = subject,
                        Body = body
                    })
                    {

                        smtp.Send(message);

                    }


                  //  Response.Write("<script>alert('your data  succesfully booked')</script>");
                   

                }
                else
                {
                    Response.Write("<script>alert('your data  not succesfully inserted pleasse try again!!.')</script>");
                }
            }catch(Exception ex){}
        }

    }
}