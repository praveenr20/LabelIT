using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Luck
{


    public class UserAcc
    {
        #region Connection String

        /// <summary>
        /// Connection String
        /// </summary>
        /// 

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Dbconnection"].ToString());

        #endregion

        #region Insert Data in Database with all param values

        /// <summary>
        /// Insert Data in Database with all param values
        /// </summary>
        /// <param name="CustomerID"></param>
        /// <param name="UserAcctId"></param>
        /// <param name="PinNo"></param>
        /// <param name="Email"></param>
        /// <param name="FName"></param>
        /// <param name="LName"></param>
        /// <param name="AcctBalance"></param>
        /// <param name="DateOfBirth"></param>
        /// <param name="CellPhoneNo"></param>
        /// <param name="LocID"></param>
        /// <param name="CanTextFlag"></param>
        /// <param name="UserTypeID"></param>
        /// <param name="AccountLockedFlag"></param>
        /// <param name="Address1"></param>
        /// <param name="Address2"></param>
        /// <param name="City"></param>
        /// <param name="State"></param>
        /// <param name="Country"></param>
        /// <param name="IsVerified"></param>

        public void Insert_UserAccount(int CustomerID, string UserAcctId, string PinNo, string Email, string FName, string LName, decimal AcctBalance, string DateOfBirth, string CellPhoneNo, int LocID, Boolean CanTextFlag, int UserTypeID, Boolean AccountLockedFlag, string Address1, string Address2, string City, string State, string Country, bool IsVerified, bool canpayout_flag)
        {
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "Sp_Insert_UserAccount";
                cmd.Parameters.AddWithValue("@CustomerID", CustomerID);
                cmd.Parameters.AddWithValue("@UserAcctId", UserAcctId);
                cmd.Parameters.AddWithValue("@PinNo", PinNo);
                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.Parameters.AddWithValue("@FName", FName);
                cmd.Parameters.AddWithValue("@LName", LName);
                cmd.Parameters.AddWithValue("@AcctBalance", AcctBalance);
                cmd.Parameters.AddWithValue("@DateOfBirth", DateOfBirth);
                cmd.Parameters.AddWithValue("@CellPhoneNo", CellPhoneNo);
                cmd.Parameters.AddWithValue("@LocID", LocID);
                cmd.Parameters.AddWithValue("@CanTextFlag", CanTextFlag);
                cmd.Parameters.AddWithValue("@UserTypeID", UserTypeID);
                cmd.Parameters.AddWithValue("@AccountLockedFlag", AccountLockedFlag);
                cmd.Parameters.AddWithValue("@Address1", Address1);
                cmd.Parameters.AddWithValue("@Address2", Address2);
                cmd.Parameters.AddWithValue("@City", City);
                cmd.Parameters.AddWithValue("@State", State);
                cmd.Parameters.AddWithValue("@Country", Country);
                cmd.Parameters.AddWithValue("@IsVerified", IsVerified);
                cmd.Parameters.AddWithValue("@canpayout_flag", canpayout_flag);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception)
            {
                //   throw;
            }
        }
        #endregion

        #region Get all UserAccount and Return Datatable

        /// <summary>
        /// Get all UserAccount and Return Datatable 
        /// </summary>
        /// <returns></returns>
        /// 
        public DataTable GetUserAccount()
        {
            DataTable dt = new DataTable();
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "Sp_GetUserAccount";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

            }
            catch (Exception)
            {
                //  throw;
            }
            return dt;
        }
        #endregion


        public void Update_UserAccount(int CustomerID, string UserAcctId, string PinNo, string Email, string FName, string LName, string CellPhoneNo, string City, string State, string Country)
        {
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "Sp_Update_UserAccount";
                cmd.Parameters.AddWithValue("@CustomerID", CustomerID);
                cmd.Parameters.AddWithValue("@UserAcctId", UserAcctId);
                cmd.Parameters.AddWithValue("@PinNo", PinNo);
                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.Parameters.AddWithValue("@FName", FName);
                cmd.Parameters.AddWithValue("@LName", LName);
                cmd.Parameters.AddWithValue("@CellPhoneNo", CellPhoneNo);
                cmd.Parameters.AddWithValue("@City", City);
                cmd.Parameters.AddWithValue("@State", State);
                cmd.Parameters.AddWithValue("@Country", Country);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception)
            {
                //   throw;
            }
        }
    }
}