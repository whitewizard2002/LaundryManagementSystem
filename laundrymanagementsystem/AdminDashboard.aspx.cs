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
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["userId"]!=null && Session["userName"]!=null && Session["userEmailId"]!=null)
            {

                string conStr = WebConfigurationManager.ConnectionStrings["UsersConnection"].ConnectionString;
                SqlConnection con = new SqlConnection(conStr);

                string aEmailQuery = "SELECT Email FROM Admins WHERE Id=@Id";
                string pendRecordQuery = "SELECT COUNT(*) FROM LaundryRecord WHERE Pending=@Pending";
                string paidRecordQuery = "SELECT COUNT(*) FROM LaundryRecord WHERE Paid=@Paid";
                string compRecordQuery = "SELECT COUNT(*) FROM LaundryRecord WHERE Completed=@Completed";
                string nUsersQuery = "SELECT COUNT(*) FROM Users";

                try
                {
                    using(con)
                    {
                        SqlCommand cmd = new SqlCommand(aEmailQuery,con);
                        cmd.Parameters.AddWithValue("@Id",Session["userId"]);

                        con.Open();
                        SqlDataAdapter sda = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        con.Close();

                        aEmail.Text = dt.Rows[0][0].ToString();
                        aEmail.Visible = true;

                        con.Open();
                        cmd = new SqlCommand(pendRecordQuery,con);
                        cmd.Parameters.AddWithValue("@Pending",1);
                        int pendRCount = Convert.ToInt32(cmd.ExecuteScalar());
                        pendRecordL.Text = pendRCount.ToString();
                        pendRecordL.Visible = true;
                        con.Close();

                        con.Open();
                        cmd = new SqlCommand(paidRecordQuery, con);
                        cmd.Parameters.AddWithValue("@Paid",1);
                        int paidRCount = Convert.ToInt32(cmd.ExecuteScalar());
                        paidRecordL.Text = pendRCount.ToString();
                        paidRecordL.Visible = true;
                        con.Close();

                        con.Open();
                        cmd = new SqlCommand(compRecordQuery, con);
                        cmd.Parameters.AddWithValue("@Completed",1);
                        int compRCount = Convert.ToInt32(cmd.ExecuteScalar());
                        compRecordL.Text = pendRCount.ToString();
                        compRecordL.Visible = true;
                        con.Close();

                        con.Open();
                        cmd = new SqlCommand(nUsersQuery, con);
                        int userRCount = Convert.ToInt32(cmd.ExecuteScalar());
                        nUsersL.Text = pendRCount.ToString();
                        nUsersL.Visible = true;
                        con.Close();

                        Response.Write(pendRCount);
                    }
                }
                catch(Exception msg)
                {
                    Response.Write(msg.Message.ToString());
                }
            }

            else
            {
                Response.Redirect("~/Home.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ViewLaundryRecordA.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ChangeProfileA.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Home.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ViewUsers.aspx");
        }
    }
}