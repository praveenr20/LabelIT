using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Luck
{
    public partial class UserAccount : System.Web.UI.Page
    {

        #region Connection String and Object of Class

        /// <summary>
        /// Connection String and Object of Class
        /// </summary>

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Dbconnection"].ToString());
        UserAcc objUserAcc = new UserAcc();

        #endregion

        #region Page Load Event

        /// <summary>
        /// Page Load Event
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Get_UserAccount();
            }
        }
        #endregion

        #region Get all data from Useraccount and bind in grid

        /// <summary>
        /// Get All Data from UserAccount and bind in Grid View
        /// </summary>

        public void Get_UserAccount()
        {
            try
            {
                DataTable dt = objUserAcc.GetUserAccount();
                GridView_UserAccount.DataSource = dt;
                GridView_UserAccount.DataBind();
            }
            catch (Exception)
            {
                //   throw;
            }
        }
        #endregion

        #region Insert Data in DB

        /// <summary>
        /// Submit all form data into database
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        protected void Button_Submit_Click(object sender, EventArgs e)
        {
            try
            {


                bool bool_CanTextFlag;//false
                bool Bool_AccountLockedFlag;//false
                bool Bool_Isverify;//True
                bool Bool_canpayout_flag;

                if (Checkbox_CanTextFlag.Checked == true)
                {
                    bool_CanTextFlag = true;
                }
                else
                {
                    bool_CanTextFlag = false;
                }


                if (Checkbox_AccountLockedFlag.Checked == true)
                {
                    Bool_AccountLockedFlag = true;
                }
                else
                {
                    Bool_AccountLockedFlag = false;
                }

                if (Checkbox_IsVerified.Checked == true)
                {
                    Bool_Isverify = true;
                }
                else
                {
                    Bool_Isverify = false;
                }

                if (Checkbox_canpayout_flag.Checked == true)
                {
                    Bool_canpayout_flag = true;
                }
                else
                {
                    Bool_canpayout_flag = false;
                }

                decimal AccBal = Convert.ToDecimal(TextBox_AcctBalance.Text);

                objUserAcc.Insert_UserAccount(0, TextBox_UserAcctId.Text, TextBox_PinNo.Text, TextBox_Email.Text, TextBox_FName.Text, TextBox_LName.Text, AccBal, TextBox_DateOfBirth.Text, TextBox_CellPhoneNo.Text, 1, bool_CanTextFlag, 2, Bool_AccountLockedFlag, TextBox_Address1.Text, TextBox_Address2.Text, TextBox_City.Text, TextBox_State.Text, TextBox_Country.Text, Bool_Isverify, Bool_canpayout_flag);

                Label_sucess.Text = "Submited Succesfully";
                funempty();
                Get_UserAccount();
            }
            catch (Exception)
            {
                // throw;
            }
        }
        #endregion

        #region Empty All fields

        /// <summary>
        /// Empty All fields
        /// </summary>

        public void funempty()
        {
            TextBox_UserAcctId.Text = TextBox_PinNo.Text = TextBox_Email.Text = TextBox_FName.Text = TextBox_LName.Text = TextBox_AcctBalance.Text = TextBox_BALANCE.Text = TextBox_DateOfBirth.Text = TextBox_CellPhoneNo.Text = TextBox_Address1.Text = TextBox_Address2.Text = TextBox_City.Text = TextBox_State.Text = TextBox_Country.Text = "";
        }
        #endregion

        #region Delete Record from Gridview

        /// <summary>
        /// Delete selected Record from gridview
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        protected void GridView_UserAccount_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(GridView_UserAccount.DataKeys[e.RowIndex].Value);
                SqlCommand cmd = new SqlCommand("Delete UserAccount where CustomerID=" + id + "", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Get_UserAccount();
            }
            catch (Exception)
            {
                // throw;
            }
        }
        #endregion

        #region Update Selected record in gridview
        /// <summary>
        /// Update Selected record in gridview
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        protected void GridView_UserAccount_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(GridView_UserAccount.DataKeys[e.RowIndex].Value);

                TextBox TextBoxg_UserAcctId = (TextBox)GridView_UserAccount.Rows[e.RowIndex].FindControl("TextBoxg_UserAcctId");
                TextBox TextBoxg_PinNo = (TextBox)GridView_UserAccount.Rows[e.RowIndex].FindControl("TextBoxg_PinNo");
                TextBox TextBoxg_Email = (TextBox)GridView_UserAccount.Rows[e.RowIndex].FindControl("TextBoxg_Email");
                TextBox TextBoxg_FName = (TextBox)GridView_UserAccount.Rows[e.RowIndex].FindControl("TextBoxg_FName");
                TextBox TextBoxg_LName = (TextBox)GridView_UserAccount.Rows[e.RowIndex].FindControl("TextBoxg_LName");
                TextBox TextBoxg_CellPhoneNo = (TextBox)GridView_UserAccount.Rows[e.RowIndex].FindControl("TextBoxg_CellPhoneNo");
                TextBox TextBoxg_City = (TextBox)GridView_UserAccount.Rows[e.RowIndex].FindControl("TextBoxg_City");
                TextBox TextBoxg_State = (TextBox)GridView_UserAccount.Rows[e.RowIndex].FindControl("TextBoxg_State");
                TextBox TextBoxg_Country = (TextBox)GridView_UserAccount.Rows[e.RowIndex].FindControl("TextBoxg_Country");

                objUserAcc.Update_UserAccount(id, TextBoxg_UserAcctId.Text, TextBoxg_PinNo.Text, TextBoxg_Email.Text, TextBoxg_FName.Text, TextBoxg_LName.Text, TextBoxg_CellPhoneNo.Text, TextBoxg_City.Text, TextBoxg_State.Text, TextBoxg_Country.Text);

                GridView_UserAccount.EditIndex = -1;
                Get_UserAccount();
            }
            catch (Exception)
            {
                //throw;
            }
        }

        #endregion

        #region Cancel Event in GridView

        /// <summary>
        /// Cancel Event in GridView
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        protected void GridView_UserAccount_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView_UserAccount.EditIndex = -1;
            Get_UserAccount();
        }
        #endregion

        #region Row Edit event in gridview

        /// <summary>
        /// Row Edit event in gridview
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        protected void GridView_UserAccount_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView_UserAccount.EditIndex = e.NewEditIndex;
            Get_UserAccount();
        }
        #endregion
    }
}