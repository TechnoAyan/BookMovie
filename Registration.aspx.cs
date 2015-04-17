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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserConnectionString"].ConnectionString);
                conn.Open();
                String check = "Select count(*) from [UserDetail] where Email='" + TextBox2.Text + "'";
                SqlCommand com1 = new SqlCommand(check, conn);
                int n = Convert.ToInt32(com1.ExecuteScalar().ToString());
                Response.Write(n);
                if (n >= 1)
                {
                    Label1.Text = "Already exist";
                    conn.Close();
                }
                else
                {
                    String insert = "insert into [UserDetail] (Name,Email,Password,Country)values(@name,@mail,@pass,@country)";
                    SqlCommand com = new SqlCommand(insert, conn);
                    com.Parameters.AddWithValue("@name", TextBox1.Text);
                    com.Parameters.AddWithValue("@mail", TextBox2.Text);
                    com.Parameters.AddWithValue("@pass", TextBox3.Text);
                    com.Parameters.AddWithValue("@country", DropDownList1.SelectedItem.ToString());
                    com.ExecuteNonQuery();
                    Label2.Text = "Registration complete";
                    conn.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}