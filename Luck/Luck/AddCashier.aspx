<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCashier.aspx.cs" Inherits="Luck.UserAccount" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
        <ajax:ToolkitScriptManager ID="ScriptManager" runat="server"></ajax:ToolkitScriptManager>

        <asp:UpdatePanel ID="updatepanel" runat="server">
            <ContentTemplate>

                <div style="padding-top: 2px; border: double">
                    <span>
                        <h3>Manage Cashiers</h3>
                    </span>
                    <table cellpadding="4" style="width: 90%; padding-left: 200px; font-size: small">

                        <tr>
                            <td>UserAcctId
                            </td>
                            <td>
                                <div>
                                    <asp:TextBox ID="TextBox_UserAcctId" runat="server"></asp:TextBox>
                                </div>
                                <div>
                                    <asp:RequiredFieldValidator ID="Rfv_UserAccid" runat="server" Display="Dynamic" ControlToValidate="TextBox_UserAcctId" ErrorMessage="Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                                </div>

                            </td>

                            <td>PinNo
                            </td>
                            <td>
                                <div>
                                    <asp:TextBox ID="TextBox_PinNo" runat="server"></asp:TextBox>
                                </div>
                                <div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ControlToValidate="TextBox_PinNo" ErrorMessage="Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="comparevalidator" ForeColor="Red" runat="server" Operator="DataTypeCheck" ControlToValidate="TextBox_PinNo" Display="Dynamic" ErrorMessage="Value must be integer" ValidationGroup="a" Type="Integer"></asp:CompareValidator>
                                </div>
                            </td>
                        </tr>

                        <tr>
                            <td>Email
                            </td>
                            <td>
                                <div>
                                    <asp:TextBox ID="TextBox_Email" runat="server"></asp:TextBox>
                                </div>
                                <div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ControlToValidate="TextBox_Email" ErrorMessage="Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExe_Email" runat="server" ControlToValidate="TextBox_Email" ErrorMessage="Not Valid Email" ForeColor="Red" ValidationGroup="a" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                                </div>
                            </td>

                            <td>First Name
                            </td>
                            <td>
                                <div>
                                    <asp:TextBox ID="TextBox_FName" runat="server"></asp:TextBox>
                                </div>
                                <div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ControlToValidate="TextBox_FName" ErrorMessage="Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>Last Name
                            </td>
                            <td>
                                <div>
                                    <asp:TextBox ID="TextBox_LName" runat="server"></asp:TextBox>
                                </div>
                                <div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ControlToValidate="TextBox_LName" ErrorMessage="Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                                </div>
                            </td>

                            <td>Account Balance
                            </td>
                            <td>
                                <div>
                                    <asp:TextBox ID="TextBox_AcctBalance" runat="server"></asp:TextBox>
                                </div>
                                <div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" ControlToValidate="TextBox_AcctBalance" ErrorMessage="Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                                </div>
                            </td>
                        </tr>

                        <tr>
                            <td>Balance
                            </td>
                            <td>
                                <div>
                                    <asp:TextBox ID="TextBox_BALANCE" Text="0.0000" ReadOnly="true" runat="server"></asp:TextBox>
                                </div>
                                <div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="Dynamic" ControlToValidate="TextBox_BALANCE" ErrorMessage="Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                                </div>
                            </td>

                            <td>Date Of Birth
                            </td>
                            <td>
                                <div>
                                    <asp:TextBox ID="TextBox_DateOfBirth" placeholder="YYYY-MM-DD" runat="server" />
                                </div>
                                <div>
                                    <%--<asp:ImageButton ID="imgbtnCalendar" runat="server" ImageUrl="~/Images/calendar.png" ImageAlign="Bottom" Width="40px" Height="40px" />--%>
                                    <%--<ajax:CalendarExtender ID="Calendar1" Enabled="true" runat="server" TargetControlID="TextBox_DateOfBirth"
                            Format="dd/MM/yyyy">
                        </ajax:CalendarExtender>--%>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Display="Dynamic" ControlToValidate="TextBox_DateOfBirth" ErrorMessage="Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="comparevalidator1" ForeColor="Red" runat="server" Operator="DataTypeCheck" ControlToValidate="TextBox_DateOfBirth" Display="Dynamic" ErrorMessage="Value must be Date formates only" ValidationGroup="a" Type="Date"></asp:CompareValidator>

                                </div>

                            </td>
                        </tr>
                        <tr>
                            <td>Contact Number
                            </td>
                            <td>
                                <div>
                                    <asp:TextBox ID="TextBox_CellPhoneNo" runat="server"></asp:TextBox>
                                </div>
                                <div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Display="Dynamic" ControlToValidate="TextBox_CellPhoneNo" ErrorMessage="Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>

                                </div>
                            </td>

                            <td>Address1
                            </td>
                            <td>
                                <div>
                                    <asp:TextBox ID="TextBox_Address1" runat="server"></asp:TextBox>
                                </div>
                                <div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" Display="Dynamic" ControlToValidate="TextBox_Address1" ErrorMessage="Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>Address2
                            </td>
                            <td>
                                <div>
                                    <asp:TextBox ID="TextBox_Address2" runat="server"></asp:TextBox>
                                </div>
                                <div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" Display="Dynamic" ControlToValidate="TextBox_Address2" ErrorMessage="Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                                </div>
                            </td>

                            <td>City
                            </td>
                            <td>
                                <div>
                                    <asp:TextBox ID="TextBox_City" runat="server"></asp:TextBox>
                                </div>
                                <div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" Display="Dynamic" ControlToValidate="TextBox_City" ErrorMessage="Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>State
                            </td>
                            <td>
                                <div>
                                    <asp:TextBox ID="TextBox_State" runat="server"></asp:TextBox>
                                </div>
                                <div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" Display="Dynamic" ControlToValidate="TextBox_State" ErrorMessage="Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                                </div>

                            </td>

                            <td>Country
                            </td>
                            <td>
                                <div>
                                    <asp:TextBox ID="TextBox_Country" runat="server"></asp:TextBox>
                                </div>
                                <div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" Display="Dynamic" ControlToValidate="TextBox_Country" ErrorMessage="Required" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                                </div>
                            </td>
                        </tr>

                        <tr>
                            <td>CanTextFlag
                            </td>
                            <td>
                                <asp:CheckBox ID="Checkbox_CanTextFlag" runat="server" />
                            </td>

                            <td>Locked
                            </td>
                            <td>
                                <asp:CheckBox ID="Checkbox_AccountLockedFlag" runat="server" />
                            </td>
                        </tr>

                        <tr>
                            <td>IsVerified
                            </td>
                            <td>
                                <asp:CheckBox ID="Checkbox_IsVerified" runat="server" />
                            </td>

                            <td>Payout flag
                            </td>
                            <td>
                                <asp:CheckBox ID="Checkbox_canpayout_flag" runat="server" />
                            </td>
                        </tr>


                        <tr>
                            <td></td>
                            <td>
                                <asp:Button ID="Button_Submit" ForeColor="White" Height="25px" BackColor="Gray" Font-Bold="true" runat="server" Text="Submit" ValidationGroup="a" OnClick="Button_Submit_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:Label ID="Label_sucess" Font-Bold="true" Font-Italic="true" ForeColor="Green" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>

        <div style="padding-top: 30px">
            <asp:GridView ID="GridView_UserAccount" runat="server" BackColor="White"
                BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="10" CellSpacing="14" Width="100%"
                ShowHeaderWhenEmpty="true" DataKeyNames="CustomerID" EmptyDataText="No Data Found" AutoGenerateColumns="false" OnRowCancelingEdit="GridView_UserAccount_RowCancelingEdit" OnRowDeleting="GridView_UserAccount_RowDeleting" OnRowEditing="GridView_UserAccount_RowEditing" OnRowUpdating="GridView_UserAccount_RowUpdating">

                <RowStyle BackColor="White" ForeColor="#003399" Height="25px" Font-Size="Small" />
                <HeaderStyle Height="30px" Font-Underline="true" Wrap="true" Font-Size="Larger" />

                <Columns>
                    <asp:TemplateField HeaderText="S.No">
                        <ItemTemplate>
                            <%#Container.DataItemIndex+1 %>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="UserAcctId">
                        <ItemTemplate>
                            <%#Eval("UserAcctId") %>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxg_UserAcctId" runat="server" Text='<%#Eval("UserAcctId") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="PinNo">
                        <ItemTemplate>
                            <%#Eval("PinNo") %>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxg_PinNo" runat="server" Text='<%#Eval("PinNo") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                            <%#Eval("Email") %>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxg_Email" runat="server" Text='<%#Eval("Email") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="First Name">
                        <ItemTemplate>
                            <%#Eval("FName") %>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxg_FName" runat="server" Text='<%#Eval("FName") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Last Name">
                        <ItemTemplate>
                            <%#Eval("LName") %>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxg_LName" runat="server" Text='<%#Eval("LName") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <%--  <asp:TemplateField HeaderText="AcctBalance">
                        <ItemTemplate>
                            <asp:Label ID="Labelg_AcctBalance" runat="server" Text='<%#Eval("AcctBalance") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="BALANCE">
                        <ItemTemplate>
                            <asp:Label ID="Labelg_BALANCE" runat="server" Text='<%#Eval("BALANCE") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="DateOfBirth">
                        <ItemTemplate>
                            <asp:Label ID="Labelg_DateOfBirth" runat="server" Text='<%#Eval("DateOfBirth") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>--%>

                    <asp:TemplateField HeaderText="Contact No">
                        <ItemTemplate>
                            <%#Eval("CellPhoneNo") %>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxg_CellPhoneNo" runat="server" Text='<%#Eval("CellPhoneNo") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>


                    <%--                    <asp:TemplateField HeaderText="LocID">
                        <ItemTemplate>
                            <asp:Label ID="Labelg_LocID" runat="server" Text='<%#Eval("LocID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="CanTextFlag">
                        <ItemTemplate>
                            <asp:Label ID="Labelg_CanTextFlag" runat="server" Text='<%#Eval("CanTextFlag") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="UserTypeID">
                        <ItemTemplate>
                            <asp:Label ID="Labelg_UserTypeID" runat="server" Text='<%#Eval("UserTypeID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="AccountLockedFlag">
                        <ItemTemplate>
                            <asp:Label ID="Labelg_AccountLockedFlag" runat="server" Text='<%#Eval("AccountLockedFlag") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Address1">
                        <ItemTemplate>
                            <%#Eval("Address1") %>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxg_Address1" runat="server" Text='<%#Eval("Address1") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Address2">
                        <ItemTemplate>
                            <%#Eval("Address2") %>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxg_Address2" runat="server" Text='<%#Eval("Address2") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>--%>

                    <asp:TemplateField HeaderText="City">
                        <ItemTemplate>
                            <%#Eval("City") %>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxg_City" runat="server" Text='<%#Eval("City") %>'></asp:TextBox>
                        </EditItemTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="State">
                        <ItemTemplate>
                            <%#Eval("State") %>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxg_State" runat="server" Text='<%#Eval("State") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Country">
                        <ItemTemplate>
                            <%#Eval("Country") %>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBoxg_Country" runat="server" Text='<%#Eval("Country") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <%--  <asp:TemplateField HeaderText="IsVerified">
                        <ItemTemplate>
                            <asp:Label ID="Labelg_IsVerified" runat="server" Text='<%#Eval("IsVerified") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>--%>

                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:LinkButton ID="Linkbutton_Edit" runat="server" ForeColor="Gray" Font-Bold="true" Text="Edit" CommandName="Edit"></asp:LinkButton>
                            <asp:LinkButton ID="Linkbutton_Delete" runat="server" ForeColor="Gray" Font-Bold="true" OnClientClick="return confirm('Are you sure you want to delete this item?');" Text="Delete" CommandName="Delete"></asp:LinkButton>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:LinkButton ID="Linkbutton_Update" runat="server" ForeColor="Gray" Font-Bold="true" Text="Update" CommandName="Update"></asp:LinkButton>
                            <asp:LinkButton ID="Linkbutton_Cancel" runat="server" ForeColor="Gray" Font-Bold="true" Text="Cancel" CommandName="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                    </asp:TemplateField>

                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
