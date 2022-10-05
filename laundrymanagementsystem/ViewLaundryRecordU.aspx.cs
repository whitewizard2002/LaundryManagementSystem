using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace laundrymanagementsystem
{
    public partial class ViewLaundryRecordU : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string conStr = WebConfigurationManager.ConnectionStrings["UsersConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            string query = "SELECT * FROM LaundryRecord WHERE Name=@Name AND Completed=@Completed";
            string query2 = "SELECT * FROM LaundryRecord WHERE Name=@Name AND Pending=@Pending";
            string query3 = "SELECT * FROM LaundryRecord WHERE Name=@Name AND Paid=@Paid";
            try
            {
                using(con)
                {
                    SqlCommand cmd = new SqlCommand(query,con);
                    SqlCommand cmd2 = new SqlCommand(query2,con);
                    SqlCommand cmd3 = new SqlCommand(query3,con);

                    cmd.Parameters.AddWithValue("@Name",Session["userName"]);
                    cmd.Parameters.AddWithValue("@Completed",1);

                    cmd2.Parameters.AddWithValue("@Name", Session["userName"]);
                    cmd2.Parameters.AddWithValue("@Pending",1);

                    cmd3.Parameters.AddWithValue("@Name", Session["userName"]);
                    cmd3.Parameters.AddWithValue("@Paid",1);

                    con.Open();
                    SqlDataReader sdr = cmd.ExecuteReader();
                    vLRUserGrid.DataSource = sdr;
                    vLRUserGrid.DataBind();
                    sdr.Close();

                    SqlDataReader sdr2 = cmd2.ExecuteReader();
                    GridView1.DataSource = sdr2;
                    GridView1.DataBind();
                    sdr2.Close();

                    SqlDataReader sdr3 = cmd3.ExecuteReader();
                    GridView2.DataSource = sdr3;
                    GridView2.DataBind();
                    sdr3.Close();

                    con.Close();
                }
            }

            catch(Exception msg)
            {
                Response.Write(msg.Message.ToString());
            }
        }

        protected void vLRUserGrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int rowIndex = Convert.ToInt32(e.CommandArgument);
            Response.Write("row Index: "+rowIndex);
            GridViewRow row = vLRUserGrid.Rows[rowIndex];
            //int id = Convert.ToInt32(vLRUserGrid.Rows[rowIndex].Cells[0].ID);
            string name = vLRUserGrid.Rows[rowIndex].Cells[0].Text;
            int noOfItem = Convert.ToInt32(vLRUserGrid.Rows[rowIndex].Cells[1].Text);
            int weight = Convert.ToInt32(vLRUserGrid.Rows[rowIndex].Cells[2].Text);
            int price = Convert.ToInt32(vLRUserGrid.Rows[rowIndex].Cells[3].Text);
            Response.Write(name+" "+noOfItem+" "+weight+" "+price);
            //DateTime date = Convert.ToDateTime(vLRUserGrid.Rows[rowIndex].Cells[9].Text);
            string query = "UPDATE LaundryRecord SET Pending=@Pending,Paid=@Paid,Completed=@Completed WHERE Name=@Name AND NoOfItem=@NoOfItem AND Weight=@Weight AND Price=@Price";

            string conStr = WebConfigurationManager.ConnectionStrings["UsersConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            try
            {
                using(con)
                {
                    //Response.Write("Id selected: "+id);
                    SqlCommand cmd = new SqlCommand(query,con);
                    //cmd.Parameters.AddWithValue("@Id",rowIndex+1);
                    cmd.Parameters.AddWithValue("@Name",name);
                    cmd.Parameters.AddWithValue("@NoOfItem",noOfItem);
                    cmd.Parameters.AddWithValue("@Weight",weight);
                    cmd.Parameters.AddWithValue("@Price",price);
                    //cmd.Parameters.AddWithValue("@DateOfCompletion",date);
                    cmd.Parameters.AddWithValue("@Pending","0");
                    cmd.Parameters.AddWithValue("@Paid","1");
                    cmd.Parameters.AddWithValue("@Completed","0");
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    Response.Redirect("~/ViewLaundryRecordU.aspx");
                }

            }
            catch(Exception msg)
            {
                Response.Write(msg.Message.ToString());
            }
            
        }
    }
}