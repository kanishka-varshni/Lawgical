<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Hod.master" AutoEventWireup="true" CodeFile="AddStaff.aspx.cs" Inherits="Hod_AddStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content1"></div>
    <div class="login-block form text-white">
        <h1 class="text-white">Add Staff</h1>
        <table>
            <tr>
                <td colspan="2">
                    <asp:Label Text="" ID="lblMessage" runat="server" />
                </td>
            </tr>
            <tr>
                <td style="width: 150px;">Staff ID</td>
                <td>
                    <asp:TextBox runat="server" ID="txtId" /></td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox runat="server" ID="txtPassword" /></td>
            </tr>
            <tr>
                <td>Staff Name</td>
                <td>
                    <asp:TextBox runat="server" ID="txtName" /></td>
            </tr>
            <tr>
                <td>Department</td>
                <td class="text-dark">
                    <asp:DropDownList runat="server" ID="ddlDepartment">
                        <asp:ListItem  Text="bca" Value ="1" />
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>Date of Joining</td>
                <td>
                    <asp:TextBox CssClass="datssepicker" runat="server" ID="txtDOJ" /></td>
            </tr>
            <tr>
                <td>Mobile</td>
                <td>
                    <asp:TextBox CssClass="" runat="server" ID="txtMobile" /></td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox CssClass="" runat="server" ID="txtEmail" /></td>
            </tr>

            <tr>
                <td>Status</td>
                <td class="text-dark">
                    <asp:DropDownList ID="ddlStatus" runat="server">
                        <asp:ListItem Text="Active" Value="1" />
                        <asp:ListItem Text="Inactive" Value="2" />
                        <asp:ListItem Text="In leave" Value="3" />
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>
                    <asp:Button CssClass="button mt-3" Text="Save" ID="btnSave" runat="server" OnClick="btnSave_Click" /></td>
                <td></td>

            </tr>

        </table>
    </div>
</asp:Content>

