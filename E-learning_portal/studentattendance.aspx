<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Hod.master" AutoEventWireup="true" CodeFile="studentattendance.aspx.cs" Inherits="studentattendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

       <div class="login-block">
		<h1>Attendance details</h1>

		<table>
			<tr>
				<td colspan="2">
					<asp:Label Text="" ID="lblMessage" runat="server" />
				</td>
			</tr>
            <tr>
				<td>Student id</td>
				<td>
					<asp:DropDownList runat="server" ID="ddlDepartment">
					</asp:DropDownList></td>
			</tr>
			<tr>
				<td style="width: 150px;">Student name</td>
				<td>
					<asp:TextBox runat="server" ID="txtId" /></td>
			</tr>
            <tr>
				<td style="width: 150px;">department</td>
				<td>
					<asp:TextBox runat="server" ID="TextBox1" /></td>
			</tr>
             <tr>
                <td>Date</td>
                <td>
                    <asp:TextBox CssClass="datssepicker" runat="server" ID="txtDOJ" /></td>
            </tr>
            <tr>
                <td>Status</td>
                <td>
                    <asp:DropDownList ID="ddlStatus" runat="server">
                        <asp:ListItem Text="present" Value="1" />
                        <asp:ListItem Text="In leave" Value="2" />
                        
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>
                    <asp:Button Text="Save" ID="btnSave" runat="server" /></td>
                <td></td>

            </tr>
            </table> 
           </div> 
</asp:Content>

