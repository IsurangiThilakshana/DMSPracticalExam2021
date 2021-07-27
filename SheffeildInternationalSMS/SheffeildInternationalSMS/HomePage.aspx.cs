using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SheffeildInternationalSMS
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {

            if (TxtbxUserId.Text == "user" && TxtbxPw.Text == "user123")
            {
                Session["Username"] = "Welcome" +TxtbxUserId.Text;
                Response.Redirect("UserPage.aspx");
            }
            else
                ErrMsg.Text = "Login Failed";
        
        }
    }
}