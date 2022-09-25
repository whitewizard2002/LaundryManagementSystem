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
                Session["userId"] = "-1";
                Session["userName"] = "Admin";
                Session["userGender"] = "Other";
                Session["userEmailId"] = "admin@gmail.com";
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
                        query = "SELECT * FROM Users WHERE Email=@Email AND Password=@Password";
                        DataTable dt = new DataTable();
                        
                        try
                        {
                            SqlCommand cmd2 = new SqlCommand(query,con);
                            cmd2.Parameters.AddWithValue("@Email", email);
                            cmd2.Parameters.AddWithValue("@Password", password);

                            con.Open();
                            SqlDataAdapter sda = new SqlDataAdapter(cmd2);
                            sda.Fill(dt);
                            con.Close();
                        }
                        catch(Exception msg)
                        {
                            Response.Write("From MSG: "+ msg.Message.ToString());
                        }


                        Session["userId"] = dt.Rows[0][0];
                        Session["userName"] = dt.Rows[0][1];
                        Session["userEmailId"] = dt.Rows[0][3];
                        //Response.Write("You were Logged In");
                        Response.Redirect("~/UserDashboard.aspx"); // to User DashBoard
                    }
                }
            }

            catch (Exception mes)
            {
                Response.Write("From MES: "+ mes.Message.ToString());
            }
        }

    }
}