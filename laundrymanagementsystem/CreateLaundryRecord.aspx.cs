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
    public partial class CreateLaundryRecord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label5.Visible = false;
            Button1.Visible = false;
        }

        protected void crtReqBtn_Click(object sender, EventArgs e)
        {
            string conStr = WebConfigurationManager.ConnectionStrings["UsersConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            int noOfItems = Convert.ToInt32(lrNoOfItems.Text);
            int weight = Convert.ToInt32(lrWeight.Text);
            DateTime date = Convert.ToDateTime(lrDate.Text);
            
            try
            {
                using (con)
                {
                    string query = "INSERT INTO [LaundryRecord](Name,NoOfItem,Weight,Price,Pending,Completed,Paid,Gender,DateOfCompletion) VALUES(@Name,@NoOfItem,@Weight,@Price,@Pending,@Completed,@Paid,@Gender,@DateOfCompletion)";
                    SqlCommand cmd = new SqlCommand(query,con);
                    //cmd.Parameters.AddWithValue("@Id",Session["userId"]);
                    cmd.Parameters.AddWithValue("@Name",Session["userName"]);
                    cmd.Parameters.AddWithValue("@NoOfItem",noOfItems);
                    cmd.Parameters.AddWithValue("@Weight",weight);
                    cmd.Parameters.AddWithValue("@Price", noOfItems*10);
                    cmd.Parameters.AddWithValue("@Pending",1);
                    cmd.Parameters.AddWithValue("@Completed",0);
                    cmd.Parameters.AddWithValue("@Paid",0);
                    cmd.Parameters.AddWithValue("@Gender",Session["userGender"]);
                    cmd.Parameters.AddWithValue("@DateOfCompletion",date.Date);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    Label5.Visible = true;
                    Button1.Visible = true;

                }

                //Response.Write("Request Added");
            }

            catch(Exception msg)
            {
                Response.Write("Outer Catch: " + msg.Message.ToString());
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UserDashboard.aspx");
        }
    }
}