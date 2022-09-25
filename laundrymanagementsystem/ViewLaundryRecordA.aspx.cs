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

            string pndquery = "SELECT * FROM LaundryRecord WHERE Pending=True";
            string cmpquery = "SELECT * FROM LaundryRecord WHERE Completed=True";
            string paidQuery = "SELECT * FROM LaundryRecord WHERE Paid=True";

            try
            {
                using(con)
                {
                    SqlCommand cmd1 = new SqlCommand(pndquery, con);
                    SqlCommand cmd2 = new SqlCommand(cmpquery,con);
                    SqlCommand cmd3 = new SqlCommand(paidQuery, con);

                    con.Open();
                    SqlDataReader rdr = cmd1.ExecuteReader();
                    GVPndRecord.DataSource = rdr;
                    GVPndRecord.DataBind();

                    rdr = cmd2.ExecuteReader();
                    GVCompRecord.DataSource = rdr;
                    GVCompRecord.DataBind();

                    rdr = cmd3.ExecuteReader();
                    GVPaidRecord.DataSource = rdr;
                    GVPaidRecord.DataBind();

                    rdr.Close();
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