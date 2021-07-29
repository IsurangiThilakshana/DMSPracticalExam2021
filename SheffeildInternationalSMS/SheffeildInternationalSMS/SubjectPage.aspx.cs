using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SheffeildInternationalSMS
{
    public partial class SubjectPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubBtn_Click(object sender, EventArgs e)
        {
            String mconn = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mconn);
            String sqlquery = "Insert into[dbo].[Subject](SubName,Marks,Grade) values (@SubName,@Marks,@Grade)";
                


            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlconn.Open();
            sqlcomm.Parameters.AddWithValue("@SubName", SubNm.Text);
            sqlcomm.Parameters.AddWithValue("@Marks", Mrks.Text);
            sqlcomm.Parameters.AddWithValue("@Grade", Grds.Text);
            sqlcomm.ExecuteNonQuery();
            SubMsg.Text = "The Records are added to the system Successfully.";
            SubNm.Text = "";
            Mrks.Text = "";
            Grds.Text = "";
            sqlconn.Close();
        }
    }
}