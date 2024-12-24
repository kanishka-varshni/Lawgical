<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Staff.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Staff_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
	<table class="SearchTable container" style="width: 100%;overflow: auto; margin:10%">

		<tr>
			<td colspan="2">User Data
			</td>
		</tr>
		<tr>
			<td>Id</td>
			<td>
				<asp:Label Text="" ID="lblId" runat="server" /></td>
		</tr>
		<tr>
			<td>Name</td>
			<td>
				<asp:Label Text="" ID="lblName" runat="server" /></td>
		</tr>
		<tr>
			<td>Department</td>
			<td>
				<asp:Label Text="" ID="lblDepartment" runat="server" /></td>
		</tr>
		<tr>
			<td>Status</td>
			<td>
				<asp:Label Text="" ID="lblStatus" runat="server" /></td>
		</tr>
	</table>
   
</asp:Content>

