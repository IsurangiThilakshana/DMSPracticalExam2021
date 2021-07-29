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
    public partial class StudentPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void StdBtn_Click(object sender, EventArgs e)
        {
            String mconn = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mconn);
            String sqlquery = "Insert into[dbo].[Student](StdFName,StdLName,StdAdress,StdTphn) values (@StdFName,@StdLName,@StdAdress,@StdTphn)";
            SqlCommand sqlcomm = new SqlCommand(sqlquery,sqlconn);
            sqlconn.Open();
            sqlcomm.Parameters.AddWithValue("@StdFName",StdFNm.Text);
            sqlcomm.Parameters.AddWithValue("@StdLName", StdLNm.Text);
            sqlcomm.Parameters.AddWithValue("@StdAdress", StdAdd.Text);
            sqlcomm.Parameters.AddWithValue("@StdTphn", StdTNum.Text);
            sqlcomm.ExecuteNonQuery();
            StdMsg.Text = "The Student" + StdFNm.Text + "is added to the system Successfully.";
            StdFNm.Text = "";
            StdLNm.Text = "";
            StdTNum.Text = "";
            sqlconn.Close();
        }
    }
}