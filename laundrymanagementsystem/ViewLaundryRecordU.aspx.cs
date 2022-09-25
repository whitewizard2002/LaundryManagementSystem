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
    public partial class ViewLaundryRecordU : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string conStr = WebConfigurationManager.ConnectionStrings["UsersConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            string query = "SELECT * FROM LaundryRecord WHERE Name=@Name";
            try
            {
                using(con)
                {
                    SqlCommand cmd = new SqlCommand(query,con);
                    cmd.Parameters.AddWithValue("@Name",Session["userName"]);
                    con.Open();
                    SqlDataReader sdr = cmd.ExecuteReader();
                    vLRUserGrid.DataSource = sdr;
                    vLRUserGrid.DataBind();
                    sdr.Close();
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