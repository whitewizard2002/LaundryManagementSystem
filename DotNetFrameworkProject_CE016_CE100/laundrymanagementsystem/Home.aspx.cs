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

            /*if(email=="admin@gmail.com" && password=="Admin1234")
            {
                Session["userId"] = "-1";
                Session["userName"] = "Admin";
                Session["userGender"] = "Other";
                Session["userEmailId"] = "admin@gmail.com";
                Response.Redirect("");//To Admin DashBoard
            }*/

            string adminQuery = "SELECT * FROM Admins WHERE Email=@Email AND Password=@Password";
            try
            {
                using (con)
                {
                    SqlCommand cmd = new SqlCommand(adminQuery,con);
                    cmd.Parameters.AddWithValue("@Email",email);
                    cmd.Parameters.AddWithValue("@Password",password);
                    con.Open();
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    con.Close();
                    if (dt.Rows.Count >= 1)
                    {
                        Session["userId"] =dt.Rows[0][0];
                        Session["userName"] = dt.Rows[0][1];
                        Session["userEmailId"] = dt.Rows[0][2];
                        Response.Redirect("~/AdminDashboard.aspx"); //Admin DashBoard
                    }

                    else //It maybe a User
                    {
                        string query = "SELECT count(*) FROM Users WHERE Email=@Email AND Password=@Password";
                        SqlCommand cmd2 = new SqlCommand(query, con);
                        cmd2.Parameters.AddWithValue("@Email", email);
                        cmd2.Parameters.AddWithValue("@Password", password);
                        con.Open();
                        int temp = Convert.ToInt32(cmd2.ExecuteScalar());
                        con.Close();
                        if (temp == 1)
                        {
                            query = "SELECT * FROM Users WHERE Email=@Email AND Password=@Password";
                            DataTable dt2 = new DataTable();

                            SqlCommand cmd3 = new SqlCommand(query, con);
                            cmd3.Parameters.AddWithValue("@Email", email);
                            cmd3.Parameters.AddWithValue("@Password", password);

                            con.Open();
                            SqlDataAdapter sda2 = new SqlDataAdapter(cmd3);
                            sda2.Fill(dt2);
                            con.Close();


                            Session["userId"] = dt2.Rows[0][0];
                            Session["userName"] = dt2.Rows[0][1];
                            Session["userGender"] = dt2.Rows[0][2];
                            Session["userEmailId"] = dt2.Rows[0][3];
                            //Response.Write("You were Logged In");
                            Response.Redirect("~/UserDashboard.aspx"); // to User DashBoard
                        }

                        else
                        {
                            Response.Write("User Not FOund");
                        }
                    }
                }
            }
            catch(Exception msg)
            {
                Response.Write(msg.Message.ToString());
                //Response.Write("Admin not found!!");
            }

        }

    }
}