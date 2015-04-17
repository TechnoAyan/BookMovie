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
    public partial class BookMovie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                try
                {
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserConnectionString"].ConnectionString);
                    conn.Open();
                    String check = "Select Name from [UserDetail] where Email='" + Session["New"].ToString() + "'";
                    SqlCommand com1 = new SqlCommand(check, conn);
                    String name = com1.ExecuteScalar().ToString().Replace(" ", "");

                    login.Text = "";
                    Label1.Text = "Hi "+name;
                    HyperLink1.Visible = true;
                    HyperLink1.Text = "Welcome " + name;
                    HyperLink1.NavigateUrl = "Profile.aspx";
                    Button1.Visible = true;
                }
                catch (Exception ex)
                {
                    Response.Write(ex.ToString());
                }
            }
            else
                Response.Redirect("Index.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("Index.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert(\"Ticket Booked\")</script");
            Response.Redirect("Index.aspx");
        }
    }
}