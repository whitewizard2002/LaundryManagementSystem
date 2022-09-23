using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace laundrymanagementsystem
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registerBtn_Click(object sender, EventArgs e)
        {
            string conStr = WebConfigurationManager.ConnectionStrings["UsersConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            string name = TextBox1.Text;
            string email = TextBox2.Text;
            string password = TextBox3.Text;
            string phoneno = TextBox4.Text;
            string Address = TextBox5.Text;

            try
            {
                using (con)
                {
                    string query1 = "SELECT * FROM Users WHERE Email=@Email";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.Parameters.AddWithValue("@Email", email);

                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd1);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    con.Close();

                    if(dt.Rows.Count>=1)
                    {
                        //Email Exists
                        emailExistLabel.Text = "Email already exists!";
                    }

                    else
                    {
                        //Response.Write("Entered Else ");
                        try
                        {
                            string query2 = "INSERT INTO Users(Name,Email,Password,PhoneNo,Address) VALUES(@Name,@Email,@Password,@PhoneNo,@Address)";
                            using (con)
                            {
                                SqlCommand cmd2 = new SqlCommand(query2, con);
                                cmd2.Parameters.AddWithValue("@Name", name);
                                cmd2.Parameters.AddWithValue("@Email", email);
                                cmd2.Parameters.AddWithValue("@Password", password);
                                cmd2.Parameters.AddWithValue("@PhoneNo", phoneno);
                                cmd2.Parameters.AddWithValue("@Address", Address);

                                con.Open();
                                cmd2.ExecuteNonQuery();
                                con.Close();

                                Response.Redirect("~/Home.aspx");//Back to login page
                            }
                        }

                        catch (Exception msg)
                        {
                            Response.Write(msg.Message.ToString());
                        }

                    }
                }

            }

            catch(Exception msg)
            {
                Response.Write(msg.Message.ToString());
            }
        }
    }
}