using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

using System.Data;


namespace mini_project.user
{
    public partial class booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.Visible = false;
            }

            if (Session["name"] == null)
            {
                Response.Redirect("../login.aspx");

            }

            if (!IsPostBack)
            {
                GridView1.Visible = false;
            }
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(cs);

           


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
           
           


            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }

        [System.Web.Script.Services.ScriptMethod()]
        [System.Web.Services.WebMethod]
        public static List<string> SOURCEDATA(string prefixText)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(cs);
            SqlDataAdapter da;
            DataTable dt;
            DataTable Result = new DataTable();
            string str = "select source from Train where source like '" + prefixText + "%'";

            da = new SqlDataAdapter(str, con);
            dt = new DataTable();
            da.Fill(dt);
            List<string> Output = new List<string>();
            for (int i = 0; i < dt.Rows.Count; i++)
                Output.Add(dt.Rows[i][0].ToString());

            con.Close();
            return Output;
        }
        [System.Web.Script.Services.ScriptMethod()]
        [System.Web.Services.WebMethod]
        public static List<string> DESDATA(string prefixText)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(cs);
            SqlDataAdapter da;
            DataTable dt;
            DataTable Result = new DataTable();
            string str = "select destination from train where destination like '" + prefixText + "%'";

            da = new SqlDataAdapter(str, con);
            dt = new DataTable();
            da.Fill(dt);
            List<string> Output = new List<string>();
            for (int i = 0; i < dt.Rows.Count; i++)
                Output.Add(dt.Rows[i][0].ToString());

            con.Close();
            return Output;
        }
 
       
    }
}