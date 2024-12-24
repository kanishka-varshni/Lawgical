<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.master" AutoEventWireup="true" CodeFile="AddMember.aspx.cs" Inherits="Model_AddMember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-sm-8 grid-margin stretch-card">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title">Add Member</h5>
                         <asp:Label Text="" ID="lblMessage" runat="server" />
                    </div>
                    <div class="row card-body">
                        <div class="col-6">
                            <div class="form-group">
                                <label for="exampleInputUsername1">First Name</label>
                                <asp:TextBox runat="server" CssClass="form-control" ID="txtFName" required="" />
                            </div>
                           
                            <div class="form-group">
                                <label for="exampleInputUsername1">Last Name</label>
                                <asp:TextBox runat="server" class="form-control" ID="txtLName" required="" />
                            </div>

                            <div class="form-group">
                                <label for="txtEmail">Email:</label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" />
                            </div>

                            <div class="form-group">
                                <label for="txtMobile">Mobile Number:</label>
                                <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" />
                            </div>

                          <div class="form-group">
                                <label for="txtAddress">Address:</label>
                                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
                            </div>
                        </div>
                        <div class="col-6">

                            <div class="form-group">
                                <label for="ddlCountry">Country:</label>
                                <asp:TextBox ID="txtCountry" runat="server" CssClass="form-control" />
                                <%--<asp:DropDownList ID="ddlCountry" runat="server" CssClass="form-control">
                                    <asp:ListItem Text="Select Country" Value="" />
                                    <asp:ListItem Text="Country1" Value="Country1" />
                                    <asp:ListItem Text="Country2" Value="Country2" />

                                </asp:DropDownList>--%>
                            </div>
                            <div class="form-group">
                                <label for="ddlState">State:</label>
                                 <asp:TextBox ID="txtState" runat="server" CssClass="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="txtCity">City:</label>
                                <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" />
                            </div>
                           <div class="form-group">
                                <label for="ddlState">Role:</label>
                               <asp:TextBox ID="txtRole" runat="server" CssClass="form-control" />
                                <%--<asp:DropDownList ID="ddlRole" CssClass="form-control" runat="server">
                                  <%--  <asp:ListItem Text="Secretery" Value="" />

                                </asp:DropDownList>--%>
                            </div>
                           
                    </div>
                        </div>
                    <div class="card-footer">
                        <asp:Button ID="btnCancel" Text="close" CssClass=" btn btn-danger" OnClick="btnCancel_Click" runat="server" />

                        <asp:Button ID="btnSave" Text="save" CssClass="width-50  btn btn-success" OnClick="btnSave_Click" runat="server" />
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>

