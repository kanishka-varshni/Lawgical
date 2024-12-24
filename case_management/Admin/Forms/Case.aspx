<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.master" AutoEventWireup="true" CodeFile="Case.aspx.cs" Inherits="Forms_Case" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-sm-8 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Default form</h4>


                        <div class="form-group">
                            <label for="exampleInputUsername1">Username</label>
                            <asp:TextBox runat="server" class="form-control" ID="txtName" required="" placeholder="UserName" />
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <asp:TextBox runat="server" class="form-control" ID="txtEmail" required="" placeholder="Email" />
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <asp:TextBox runat="server" class="form-control" ID="txtpassword" required="" TextMode="Password" placeholder="Password" />
                        </div>
                        <div class="form-group">
                            <label for="exampleInputConfirmPassword1">Confirm Password</label>
                            <asp:TextBox runat="server" class="form-control" ID="txtCPsw" required="" TextMode="Password" placeholder="Password" />
                        </div>

                        <asp:Button ID="btnLogin" Text="Login" class="width-30 pull-left btn btn-primary" runat="server" />
                        <asp:Button ID="btnCancel" Text="Cancel" class="width-30 pull-left btn btn-danger" runat="server" />

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

