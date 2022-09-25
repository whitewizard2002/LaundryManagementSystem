using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace laundrymanagementsystem
{
    public partial class UserDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
    }
}