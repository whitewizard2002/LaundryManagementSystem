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
    public partial class ChangeProfileU : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = nName.Text;
            string gender = nGenderList.SelectedValue;
            string email = nEmail.Text;
            string password = nPassword.Text;
            string phoneNo = nPhoneNo.Text;
            string address = nAddress.Text;

            string conStr = WebConfigurationManager.ConnectionStrings["UsersConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            string query1 = "SELECT * FROM Users WHERE Email=@Email";
            string query2 = "UPDATE Users SET Name = @Name, Gender = @Gender,Email=@Email,Password=@Password,PhoneNo=@PhoneNo,Address=@Address WHERE Id=@Id";
            try
            {
                using(con)
                {
                    SqlCommand cmd1 = new SqlCommand(query1,con);
                    cmd1.Parameters.AddWithValue("@Email",email);
                    con.Open();
                    SqlDataAdapter sda = new SqlDataAdapter(cmd1);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    con.Close();

                    if(dt.Rows.Count>=1)
                    {
                        emailExists.Text = "Provided Email already Exists";
                    }

                    else
                    {
                        emailExists.Text = "";
                        SqlCommand cmd2 = new SqlCommand(query2, con);
                        cmd2.Parameters.AddWithValue("@Id", Session["userId"]);
                        cmd2.Parameters.AddWithValue("@Name", name);
                        cmd2.Parameters.AddWithValue("@Gender", gender);
                        cmd2.Parameters.AddWithValue("@Email", email);
                        cmd2.Parameters.AddWithValue("@Password", password);
                        cmd2.Parameters.AddWithValue("@PhoneNo", phoneNo);
                        cmd2.Parameters.AddWithValue("@Address", address);

                        con.Open();
                        cmd2.ExecuteNonQuery();
                        con.Close();

                        Response.Write("Profile Updated");

                    }

                    //Response.Write("Profile Changed!");

                }
            }
            catch(Exception msg)
            {
                Response.Write(msg.Message.ToString());
            }
        }
    }
}