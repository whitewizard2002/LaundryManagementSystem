using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace laundrymanagementsystem
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginSubmitBtn_Click(object sender, EventArgs e)
        {
            string conStr = WebConfigurationManager.ConnectionStrings["UsersConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            string email = uEmail.Text;
            string password = uPassword.Text;

            if(email=="admin@gmail.com" && password=="Admin1234")
            {
                Response.Redirect("");//To Admin DashBoard

            }

            try
            {
                using (con)
                {
                    string query = "SELECT count(*) FROM Users WHERE Email=@Email AND Password=@Password";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Password", password);
                    con.Open();
                    int temp=Convert.ToInt32(cmd.ExecuteScalar());
                    con.Close();
                    if (temp==1)
                    {
                        Response.Redirect(""); // to User DashBoard
                    }
                }
            }

            catch (Exception mes)
            {
                Console.WriteLine(mes.Message.ToString());
            }
        }

    }
}