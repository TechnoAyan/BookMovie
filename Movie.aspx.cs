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
    public partial class WebForm3 : System.Web.UI.Page
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
                    HyperLink1.Text = "Welcome " + name;
                    HyperLink1.NavigateUrl = "Profile.aspx";
                    Button1.Visible = true;

                String check1 = "Select count(*) from [Movie] ";
                SqlCommand com11 = new SqlCommand(check1, conn);
                int no = Convert.ToInt32(com11.ExecuteScalar().ToString());
                for (int i = no; i <= 1; i--)
                {
                    String check2 = "Select MovieName from [Movie] where id=" + no + "";
                    SqlCommand com2 = new SqlCommand(check2, conn);
                    String mov = com2.ExecuteScalar().ToString();
                    String check3 = "Select Th1 from [Movie] where id=" + no + "";
                    SqlCommand com3 = new SqlCommand(check3, conn);
                    String th1 = com3.ExecuteScalar().ToString();
                    String check4 = "Select Th2 from [Movie] where id=" + no+"";
                    SqlCommand com4 = new SqlCommand(check4, conn);
                    String th2 = com4.ExecuteScalar().ToString();
                    String check5 = "Select Th3 from [Movie] where id=" + no + "";
                    SqlCommand com5 = new SqlCommand(check5, conn);
                    String th3 = com5.ExecuteScalar().ToString();

                    String check6 = "Select P1 from [Movie] where id=" + no + "";
                    SqlCommand com6 = new SqlCommand(check6, conn);
                    int p1 = Convert.ToInt32(com6.ExecuteScalar().ToString());
                    String check7 = "Select P2 from [Movie] where id=" + no + "";
                    SqlCommand com7 = new SqlCommand(check7, conn);
                    int p2 = Convert.ToInt32(com1.ExecuteScalar().ToString());
                    String check8 = "Select P3 from [Movie] where id=" + no + "";
                    SqlCommand com8 = new SqlCommand(check8, conn);
                    int p3 = Convert.ToInt32(com1.ExecuteScalar().ToString());

                    String check9 = "Select Img from [Movie] where id=" + no + "";
                    SqlCommand com9 = new SqlCommand(check9, conn);
                    String pic = com9.ExecuteScalar().ToString();

                   
                    
              /*      Label4.Text = Session["pty"].ToString();
                    SqlDataAdapter adpt = new SqlDataAdapter("Select * from Movie", conn);
                    DataTable ds = new DataTable();
                    adpt.Fill(ds);
                    DataTable dt = new DataTable();
                    dt.Columns.Add(new DataColumn("Img", Type.GetType("System.String")));
                    dt.Columns.Add(new DataColumn("MovieName", Type.GetType("System.String")));

                    dt.Columns.Add(new DataColumn("Th1", Type.GetType("System.String")));
                    dt.Columns.Add(new DataColumn("P1", Type.GetType("System.String")));
                   
                    dt.Columns.Add(new DataColumn("Th2", Type.GetType("System.String")));
                    dt.Columns.Add(new DataColumn("P2", Type.GetType("System.String")));
                   
                    dt.Columns.Add(new DataColumn("Th3", Type.GetType("System.String")));
                    dt.Columns.Add(new DataColumn("P3", Type.GetType("System.String")));
                   


                    dt.Columns.Add(new DataColumn("discount", Type.GetType("System.String")));
                    DataRow dr;
                    int p = ds.Rows.Count;
                    for (int i = 0; i < p; i++)
                    {
                        dr = dt.NewRow();
                        dr[0] = ds.Rows[i].ItemArray[0].ToString();
                        dr[1] = "Rs " + ds.Rows[i].ItemArray[1].ToString();

                        dr[2] = ds.Rows[i].ItemArray[2].ToString();
                        dr[3] = "ElecDesc.aspx?pid=" + ds.Rows[i].ItemArray[2].ToString() + "&cid=" + cid + "&cusid=" + cusid;
                        dr[4] = ds.Rows[i].ItemArray[4].ToString() + "% off!!!!";
                        dt.Rows.Add(dr);
                    }
                    DataList1.DataSource = dt;
                    DataList1.DataBind();
                    Session.Add("cid", Session["cid"].ToString());
                    Session.Add("cusid", Session["cusid"].ToString());
                    */
                    conn.Close();
                }
            }            
                catch (Exception ex)
                {
                    Response.Write(ex.ToString());
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("Movie.aspx");
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                Response.Redirect("BookMovie.aspx");
            }
            else
                Response.Write("<script>alert(\"login First!!\")</script>");
        }

       /*     protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int row = int.Parse(e.CommandArgument.ToString());
        var name = GridView1.Rows[row].Cells[0].Text.Trim();
        Session.Add("transport",name);
        Session.Add("from", DropDownList1.Text);
        Session.Add("to", DropDownList2.Text);
        Session.Add("date", TextBox1.Text);
        Response.Redirect("Booking.aspx");
    }*/

           }
    }
