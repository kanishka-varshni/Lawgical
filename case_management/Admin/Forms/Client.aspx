<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.master" AutoEventWireup="true" CodeFile="Client.aspx.cs" Inherits="Forms_Client" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container header">
        <h2>Cases</h2>
         <asp:Button ID="btnAddCase" Text="Add Case" class="width-30 pull-left btn btn-primary" runat="server" />
    </div>
     <div class="form-group">
           <label for="txtAddress">Address:</label>
               <%--  <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />--%>
         <asp:TextBox TextMode=""
                                </div>
</asp:Content>

