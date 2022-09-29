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
            //Response.Write(conStr);
            SqlConnection con = new SqlConnection(conStr);
            string name = TextBox1.Text;
            string email = TextBox2.Text;
            string password = TextBox3.Text;
            string phoneno = TextBox4.Text;
            string Address = TextBox5.Text;
            string Gender = GenderRBL.SelectedValue;

            try
            {
                using (con)
                {
                    string query1 = "SELECT * FROM [Users] WHERE Email=@Email";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.Parameters.AddWithValue("@Email", email);

                    con.Open();
                    SqlDataAdapter sda = new SqlDataAdapter(cmd1);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    con.Close();

                    if(dt.Rows.Count==1)
                    {
                        //Email Exists
                        //Response.Write("Value of temp: "+temp);
                        emailExistLabel.Text = "Email already exists!";
                    }


                    query1 = "SELECT * FROM Admins WHERE Email=@Email";
                    cmd1 = new SqlCommand(query1,con);
                    cmd1.Parameters.AddWithValue("@Email",email);
                    con.Open();
                    sda = new SqlDataAdapter(cmd1);
                    dt = new DataTable();
                    sda.Fill(dt);
                    con.Close();

                    if (dt.Rows.Count == 1)
                        emailExistLabel.Text = "Email Already Exists!";

                    else
                    {
                        emailExistLabel.Text = "";
                        //Response.Write("Entered Else ");
                        try
                        {
                            string query2 = "INSERT INTO [Users](Name,Gender,Email,Password,PhoneNo,Address) VALUES(@Name,@Gender,@Email,@Password,@PhoneNo,@Address)";
                            using (con)
                            {
                                //Response.Write("Gender value: "+Gender);
                                SqlCommand cmd2 = new SqlCommand(query2, con);
                                cmd2.Parameters.AddWithValue("@Name", name);
                                cmd2.Parameters.AddWithValue("@Gender", Gender);
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
                            //Response.Write("Inner Catch");
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