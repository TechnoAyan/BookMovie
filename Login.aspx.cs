using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace BookMovie
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Buttonlogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserConnectionString"].ConnectionString);
                conn.Open();
                String check = "Select count(*) from [UserDetail] where Email='" + TextBox1.Text + "'";
                SqlCommand com1 = new SqlCommand(check, conn);
                int n = Convert.ToInt32(com1.ExecuteScalar().ToString());
                Response.Write(n);
                if (n >= 1)
                {
                    String passwordquery = "Select Password from [UserDetail] where Email='" + TextBox1.Text + "'";
                    SqlCommand com = new SqlCommand(passwordquery, conn);
                    String password = com.ExecuteScalar().ToString().Replace(" ", "");
                    if (password == TextBox2.Text)
                    {
                        Session["New"] = TextBox1.Text;
                        Response.Redirect("Index.aspx");
                    }
                    else
                        Label1.Text="password incorrect";
                }
                else
                    Label2.Text="Email incorrect";
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}