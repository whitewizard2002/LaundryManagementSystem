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
    public partial class ChangeProfileA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userId"]==null || Session["userName"]==null || Session["userEmailId"]==null)
            {
                Response.Redirect("~/Home.aspx");
            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string conStr = WebConfigurationManager.ConnectionStrings["UsersConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            string email = nEmail.Text;
            string password = nPassword.Text;

            string query = "UPDATE Admins SET Email=@Email , Password=@Password WHERE Id=@Id";
            try
            {
                using (con)
                {
                    SqlCommand cmd = new SqlCommand(query,con);
                    cmd.Parameters.AddWithValue("@Id",Session["userId"]);
                    cmd.Parameters.AddWithValue("@Email",email);
                    cmd.Parameters.AddWithValue("@Password",password);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    Response.Redirect("~/AdminDashboard.aspx");
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