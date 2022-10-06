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
    public partial class UserDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string conStr = WebConfigurationManager.ConnectionStrings["UsersConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            string profQuery = "SELECT Name,Gender,Email,PhoneNo FROM Users WHERE Id=@Id";
            string nReqQuery = "SELECT COUNT(*) FROM LaundryRecord WHERE Name=@Name";
            string pReqQuery = "SELECT COUNT(*) FROM LaundryRecord WHERE Name=@Name AND Pending=@Pending";
            string paidReqQuery = "SELECT COUNT(*) FROM LaundryRecord WHERE Name=@Name AND Paid=@Paid";

            try
            {
                using(con)
                {
                    SqlCommand cmd = new SqlCommand(profQuery,con);
                    cmd.Parameters.AddWithValue("@Id",Session["userId"]);

                    con.Open();
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    con.Close();

                    uName.Text = dt.Rows[0][0].ToString();
                    uName.Visible = true;
                    uEmail.Text = dt.Rows[0][2].ToString();
                    uEmail.Visible = true;
                    uGender.Text = dt.Rows[0][1].ToString();
                    uGender.Visible = true;
                    uPhone.Text = dt.Rows[0][3].ToString();
                    uPhone.Visible = true;

                    con.Open();
                    cmd = new SqlCommand(nReqQuery,con);
                    cmd.Parameters.AddWithValue("@Name",Session["userName"]);
                    int temp = Convert.ToInt32(cmd.ExecuteScalar());
                    con.Close();

                    cReqCount.Text = temp.ToString();
                    cReqCount.Visible = true;

                    con.Open();
                    cmd = new SqlCommand(pReqQuery,con);
                    cmd.Parameters.AddWithValue("@Name",Session["userName"]);
                    cmd.Parameters.AddWithValue("@Pending",1);
                    temp = Convert.ToInt32(cmd.ExecuteScalar());
                    con.Close();

                    pRecCount.Text = temp.ToString();
                    pRecCount.Visible = true;

                    con.Open();
                    cmd = new SqlCommand(paidReqQuery,con);
                    cmd.Parameters.AddWithValue("@Name",Session["userName"]);
                    cmd.Parameters.AddWithValue("@Paid",1);
                    temp = Convert.ToInt32(cmd.ExecuteScalar());
                    con.Close();

                    paidRecCount.Text = temp.ToString();
                    paidRecCount.Visible = true;


                }
            }
            catch(Exception msg)
            {
                Response.Write(msg.Message.ToString());
            }

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