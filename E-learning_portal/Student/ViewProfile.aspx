<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Student.master" AutoEventWireup="true" CodeFile="ViewProfile.aspx.cs" Inherits="Student_ViewProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

	<table class="SearchTable container" style="width: 100%;overflow: auto; margin:10%">

		<tr>
			<td colspan="2">User Data
			</td>
		</tr>
		<tr>
			<td>Id</td>
			<td>
				<asp:Label Text="" ID="lblId" runat="server" /></td></tr>
		<tr>
			<td>Name</td>
			<td>
				<asp:Label Text="" ID="lblName" runat="server" /></td>
		</tr>
		<tr>
			<td>Department</td>
			<td>
				<asp:Label Text="" ID="lblDepartment" runat="server" /></td></tr>
		
	</table>
</asp:Content>

