using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace EService
{

    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Create_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into data values (@Username, @Password, @accType)", con);
            cmd.Parameters.AddWithValue("Username", User.Text);
            cmd.Parameters.AddWithValue("Password", Pwd.Text);
            cmd.Parameters.AddWithValue("accType", acc_type.Text);
            cmd.ExecuteNonQuery();
            Label1.Visible = true;
            Label1.Text = "User registered successfully";

            User.Text = "";
            Pwd.Text = "";
            acc_type.Text = "";
        }
    }
} 