using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Web.Security;


namespace EService
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        static int attempt = 3;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("");
            
        }

        protected void Lg_in_Click(object sender, EventArgs e)
        {
            string username = Username.Text;
            string password = Password.Text;

            if ((this.Username.Text == "Admin") && (this.Password.Text == "admin"))
            {
                Response.Redirect("Admin.aspx");
                attempt = 0;
                if (User.Identity.IsAuthenticated)
                {
                    Label1.Visible = true;
                    Label1.Text = ("you are granted with access");
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    FormsAuthentication.RedirectToLoginPage();
                }

            }
            else if ((attempt == 3) && (attempt > 0))
            {
                Label1.Text = ("You Have Only " + Convert.ToString(attempt) + " Attempt Left To Try");
                --attempt;
            }
            else
            {
               Label1.Text =("Log in data not found. Please contact administrator.");
            }

        }
    }
}