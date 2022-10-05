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
    public partial class ViewLaundryRecordA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string conStr = WebConfigurationManager.ConnectionStrings["UsersConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            string pndquery = "SELECT * FROM LaundryRecord WHERE Pending='True'";
            string cmpquery = "SELECT * FROM LaundryRecord WHERE Completed='True'";
            string paidQuery = "SELECT * FROM LaundryRecord WHERE Paid='True'";

            try
            {
                using(con)
                {
                    SqlCommand cmd1 = new SqlCommand(pndquery, con);
                    SqlCommand cmd2 = new SqlCommand(cmpquery,con);
                    SqlCommand cmd3 = new SqlCommand(paidQuery, con);

                    con.Open();
                    SqlDataReader rdr1 = cmd1.ExecuteReader();
                    GVPendRecord.DataSource = rdr1;
                    GVPendRecord.DataBind();
                    rdr1.Close();

                    SqlDataReader rdr2 = cmd2.ExecuteReader();
                    GVCompRecord.DataSource = rdr2;
                    GVCompRecord.DataBind();
                    rdr2.Close();

                    SqlDataReader rdr3 = cmd3.ExecuteReader();
                    GVPaidRecord.DataSource = rdr3;
                    GVPaidRecord.DataBind();
                    rdr3.Close();
                    con.Close();
                }
            }
            catch(Exception msg)
            {
                Response.Write(msg.Message.ToString());
            }
        }

        protected void GVPendRecord_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int rowIndex = Convert.ToInt32(e.CommandArgument);
            Response.Write("row Index: "+rowIndex);
            GridViewRow row = GVPendRecord.Rows[rowIndex];
            //int id = Convert.ToInt32(vLRUserGrid.Rows[rowIndex].Cells[0].ID);
            string name = GVPendRecord.Rows[rowIndex].Cells[0].Text;
            int noOfItem = Convert.ToInt32(GVPendRecord.Rows[rowIndex].Cells[1].Text);
            int weight = Convert.ToInt32(GVPendRecord.Rows[rowIndex].Cells[2].Text);
            int price = Convert.ToInt32(GVPendRecord.Rows[rowIndex].Cells[3].Text);
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
                    cmd.Parameters.AddWithValue("@Paid","0");
                    cmd.Parameters.AddWithValue("@Completed","1");
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    Response.Redirect("~/ViewLaundryRecordA.aspx");
                }

            }
            catch(Exception msg)
            {
                Response.Write(msg.Message.ToString());
            }
        }
    }
}