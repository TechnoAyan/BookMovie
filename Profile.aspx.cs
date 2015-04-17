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
    public partial class WebForm2 : System.Web.UI.Page
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
                    HyperLink1.Visible = true;
                    HyperLink1.Text = "Welcome "+name;
                    HyperLink1.NavigateUrl = "Profile.aspx";
                    Button1.Visible = true;
                    conn.Close();
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
            try{
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserConnectionString"].ConnectionString);
                    conn.Open();
                    String check = "Select Password from [UserDetail] where Email='" + Session["New"].ToString() + "'";
                    SqlCommand com1 = new SqlCommand(check, conn);
                    String pass = com1.ExecuteScalar().ToString().Replace(" ", "");
                    if (pass == TextBox1.Text)
                    {
                        String check1 = "update [UserDetail] set Password='" + TextBox2.Text + "' where Email='" + Session["New"].ToString() + "'";
                        SqlCommand com2 = new SqlCommand(check1, conn);
                        com2.ExecuteScalar();
                        Label1.Visible = false;
                        Label2.Text = "Password Updated";
                        conn.Close();
                    }
                    else
                        Label1.Text = "Incorrect Password";
            }catch(Exception ex)
            {
                Response.Write(ex.ToString());
        }
        }

       
    }
}