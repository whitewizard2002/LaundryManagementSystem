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
    public partial class UserDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cLRBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CreateLaundryRecord.aspx");
        }

        protected void vLRBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ViewLaundryRecordU.aspx");
        }

        protected void cPBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ChangeProfileU.aspx");
        }

        protected void dPrfBtn_Click(object sender, EventArgs e)
        {
            System.Web.UI.ScriptManager.RegisterStartupScript(this, GetType(), "displayalertmessage", "alert('alert to be displayed');", true);
            string conStr = WebConfigurationManager.ConnectionStrings["UsersConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            string query = "DELETE FROM Users WHERE ID=@Id";
            try
            {
                using(con)
                {
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@Id", Session["userId"]);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Session.Clear();
                    Response.Redirect("~/Home.aspx");
                }
            }
            catch(Exception msg)
            {
                Response.Write(msg.Message.ToString());
            }
        }

        protected void logOutBtn_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Home.aspx");
        }
    }
}