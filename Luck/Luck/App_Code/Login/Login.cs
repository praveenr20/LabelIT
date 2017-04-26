using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Luck
{
    /// <summary>
    /// Counstructor
    /// </summary>
    public class Login
    {
        #region Connection string
        /// <summary>
        /// Connection string
        /// </summary>
        
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Dbconnection"].ToString());

        #endregion

        #region Get Login Details

        /// <summary>
        /// Get Login Details
        /// </summary>
        /// <param name="UserName"></param>
        /// <param name="Password"></param>
        /// <returns></returns>

        public DataTable IsValidUser(string UserName, string Password)
        {
            DataTable dt_GetLogin = new DataTable();

            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "IsValidUser";
                cmd.Parameters.AddWithValue("@Login", UserName);
                cmd.Parameters.AddWithValue("@Pass", Password);
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                con.Open();
                adp.Fill(dt_GetLogin);
                con.Close();
            }
            catch (Exception)
            {
                //throw;
            }
            return dt_GetLogin;
        }
        #endregion
    }


}