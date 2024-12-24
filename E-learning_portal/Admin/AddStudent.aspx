<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Hod.master" AutoEventWireup="true" CodeFile="AddStudent.aspx.cs" Inherits="Hod_AddStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="login-block form text-white">
		<h1 class="text-white">Add Student</h1>

		<table>
			<tr>
				<td colspan="2">
					<asp:Label Text="" ID="lblMessage" runat="server" />
				</td>
			</tr>
			<tr>
				<td style="width: 150px;">Student ID</td>
				<td>
					<asp:TextBox runat="server" ID="txtId" /></td>
			</tr>
			<tr>
				<td style="width: 150px;">Password</td>
				<td>
					<asp:TextBox runat="server" ID="txtPassword" /></td>
			</tr>
			<tr>
				<td>Student Name</td>
				<td>
					<asp:TextBox runat="server" ID="txtName" /></td>
			</tr> 
			<tr>
				<td>Department</td>
				<td  class="text-dark">
					<asp:DropDownList runat="server" ID="ddlDepartment">
					</asp:DropDownList></td>
			</tr>
			<tr>
				<td>Batch</td>
				<td class="text-dark">
					<asp:DropDownList runat="server" ID="ddlYear">
						<asp:ListItem Text="2015" Value="1" />
						<asp:ListItem Text="2016" Value="2" />
						<asp:ListItem Text="2017" Value="3" />
						<asp:ListItem Text="2018" Value="4" />
					</asp:DropDownList>
				</td>
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
					<asp:Button CssClass="button mt-3" Text="Save" ID="btnSave" OnClick="btnSave_Click" runat="server" /></td>
				<td></td>

			</tr>

		</table>
	</div>
</asp:Content>

