using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Luck.Model;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Luck
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        //LuckDBEntities db = new LuckDBEntities();

        Login objlogin = new Login();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Dbconnection"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        #region Get/Check Login Details when login user

        /// <summary>
        /// Get/Check Login Details when login user
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = objlogin.IsValidUser(UserName.Text, Password.Text);
                if (dt.Rows.Count > 0)
                {
                    Session["User"] = UserName.Text;
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    lblerror.Text = "Invalid Username or Password";
                }
            }
            catch (Exception)
            {
                //throw;
            }
        }
        #endregion
    }
}