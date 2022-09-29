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
    public partial class ViewLaundryRecordA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string conStr = WebConfigurationManager.ConnectionStrings["UsersConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            string pndquery = "SELECT * FROM LaundryRecord WHERE Pending='True'";
            string cmpquery = "SELECT * FROM LaundryRecord WHERE Completed='True'";
            string paidQuery = "SELECT * FROM LaundryRecord WHERE Paid='True'";

            try
            {
                using(con)
                {
                    SqlCommand cmd1 = new SqlCommand(pndquery, con);
                    SqlCommand cmd2 = new SqlCommand(cmpquery,con);
                    SqlCommand cmd3 = new SqlCommand(paidQuery, con);

                    con.Open();
                    SqlDataReader rdr1 = cmd1.ExecuteReader();
                    GVPndRecord.DataSource = rdr1;
                    GVPndRecord.DataBind();
                    rdr1.Close();

                    SqlDataReader rdr2 = cmd2.ExecuteReader();
                    GVCompRecord.DataSource = rdr2;
                    GVCompRecord.DataBind();
                    rdr2.Close();

                    SqlDataReader rdr3 = cmd3.ExecuteReader();
                    GVPaidRecord.DataSource = rdr3;
                    GVPaidRecord.DataBind();
                    rdr3.Close();
                    con.Close();
                }
            }
            catch(Exception msg)
            {
                Response.Write(msg.Message.ToString());
            }
        }
    }
}