using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SheffeildInternationalSMS
{
    public partial class SISMS : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null) {
                UserLogin.Text = Session["Username"].ToString();
            }
            else
            {
                Response.Redirect("HomePage.aspx");
            }

        }

        protected void Stdnt_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentPage.aspx");
        }

        protected void Subs_Click(object sender, EventArgs e)
        {
            Response.Redirect("SubjectPage.aspx");
        }

        protected void Dshbrd_Click(object sender, EventArgs e)
        {
            Response.Redirect("DashBoard.aspx");
        }


        protected void Logout_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session.Abandon();
            Response.Redirect("HomePage.aspx");
        }
    }
}