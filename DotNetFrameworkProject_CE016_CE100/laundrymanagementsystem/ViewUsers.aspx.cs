﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace laundrymanagementsystem
{
    public partial class ViewUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["userId"]!=null && Session["userName"]!=null && Session["userEmailId"]!=null)
            {

                string conStr = WebConfigurationManager.ConnectionStrings["UsersConnection"].ConnectionString;
                SqlConnection con = new SqlConnection(conStr);

                string query = "SELECT * FROM Users";
                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand(query, con);
                    SqlDataReader rdr = cmd.ExecuteReader();
                    usersGV.DataSource = rdr;
                    usersGV.DataBind();
                    rdr.Close();
                    con.Close();
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

        protected void logOutBtn_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Home.aspx");
        }
    }
}