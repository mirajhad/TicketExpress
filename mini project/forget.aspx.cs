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
    public partial class forget : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string to = TextBox1.Text;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            string query = "select name,email,password from userdata where email='" + to + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            try
            {
                SqlDataReader sdr = cmd.ExecuteReader();

                if (sdr.Read())
                {
                    string email1 = sdr["password"].ToString();
                    string name1 = sdr["name"].ToString();
                    var fromAddress = new MailAddress("vivekpandey.nielit.gov.in@gmail.com", "From Name");
                    var toAddress = new MailAddress(to, "To Name");
                    const string fromPassword = "Vivek@123";
                    const string subject = "otp received by IRCTC";


                    string body = name1 + "  your password is :" + email1;

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

                    Response.Write("<script>alert('your password has been sent your registered email-id.')</script>");


                }
                else
                {
                    Label1.Text = "sorry please enter registered email-id.";


                }
            }
            catch (SqlException ex)


            {
                Label1.Text = "sorry please enter registered email-id.";
                con.Close();
            }

        }
    }
}