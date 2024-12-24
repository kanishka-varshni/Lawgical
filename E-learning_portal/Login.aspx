<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Home.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



    <div class="login-block form">
        <div class="row">
             <div class="col-6">
                <img src="https://garizon.in/public/img/login.jpg" />
            </div>
            <div class="col-6" style="margin-top:8%">
                <h1 class="text-white">
                    <asp:Label Text="" ID="lblName" runat="server" />
                    Login</h1>
                <asp:TextBox runat="server" placeholder="Username" ID="username" />
                <asp:TextBox runat="server" TextMode="Password" placeholder="Password" ID="password" />
                <asp:Button CssClass="button" Text="Login" ID="btnLogin" OnClick="btnLogin_Click" runat="server" />
            </div>
           
        </div>
    </div>

</asp:Content>

