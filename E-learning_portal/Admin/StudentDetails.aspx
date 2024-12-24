<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Hod.master" AutoEventWireup="true" CodeFile="StudentDetails.aspx.cs" Inherits="Hod_StudentDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <fieldset style="width: 100%;overflow: auto;" class="container m-5">
		<legend>Student Details</legend>
	<div style="width:100%;margin:5%;font-size:32px">
		<asp:GridView ID="grd_show" runat="server" CssClass="SearchTable" AutoGenerateColumns="true">

			
		</asp:GridView>
		</div>
	</fieldset>
</asp:Content>

