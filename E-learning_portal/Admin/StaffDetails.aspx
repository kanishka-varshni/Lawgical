<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Hod.master" AutoEventWireup="true" CodeFile="StaffDetails.aspx.cs" Inherits="Hod_StaffDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

	<fieldset style="width: 100%;overflow: auto;" class="container m-5">
		<legend>Staff Details</legend>
		<div style="width:100%;margin:5%;font-size:32px">
		<asp:GridView ID="grd_show" runat="server" CssClass="SearchTable" AutoGenerateColumns="true">

			
		</asp:GridView>
		</div>
	</fieldset>
</asp:Content>

