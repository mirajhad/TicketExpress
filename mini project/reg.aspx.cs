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

namespace mini_project
{
    public partial class reg : System.Web.UI.Page
    {
        

        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
       
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             
            

            string s = "0";
            Random r = new Random();
            int num = r.Next(88899999);
            string data = num.ToString();

            SqlConnection con = new SqlConnection(cs);

            string query = "insert into userdata(name,email,phone,password,otp,status) values('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "', '" + data + "', '" + s + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            try
            {
                int result = cmd.ExecuteNonQuery();
                con.Close();
                if (result >= 1)
                {
                    string to = TextBox2.Text;
                    string name = TextBox1.Text;

                    var fromAddress = new MailAddress("vivekpandey.nielit.gov.in@gmail.com", "From Name");
                    var toAddress = new MailAddress(to, "To Name");
                    const string fromPassword = "Vivek@123";
                    const string subject = "otp received by IRCTC";


                    string body = name + "  your otp is :" + data;

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


                    Response.Write("<script>alert('your data succesfully inserted pleasse go to login tab.')</script>");
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    Session["OTP"] = data;
                    Response.Redirect("otp.aspx", true);

                }
                else
                {
                    Response.Write("<script>alert('your data not succesfully inserted pleasse try again!!.')</script>");
                   
                }

            }
            catch (SqlException ex)
            {
                Response.Write("<script>alert('your data succesfully inserted pleasse go to login tab.')</script>");
                 Response.Redirect("reg.aspx", true);
                
            }
        }
        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

            
        
    
    }
}