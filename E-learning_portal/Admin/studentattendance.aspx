<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Hod.master" AutoEventWireup="true" CodeFile="studentattendance.aspx.cs" Inherits="Admin_studentattendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="login-block form text-white">
		<h1 class="text-white">Attendance details</h1>

		<table>
			<tr>
				<td colspan="2">
					<asp:Label Text="" ID="lblMessage" runat="server" />
				</td>
			</tr>
            <tr>
				<td>Student id</td>
				<td class="text-dark">
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
                <td class="text-dark">
                    <asp:DropDownList ID="ddlStatus" runat="server">
                        <asp:ListItem Text="present" Value="1" />
                        <asp:ListItem Text="In leave" Value="2" />
                        
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>
                    <asp:Button CssClass="button mt-4" Text="Save" ID="btnSave" runat="server" /></td>
                <td></td>

            </tr>
            </table> 
           </div> 

</asp:Content>

