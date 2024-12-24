<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.master" AutoEventWireup="true" CodeFile="AddClient.aspx.cs" Inherits="AddClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="content-wrapper">
        <div class="row">
            <div class="col-sm-8 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h2 class="card-title text-primary">Add Client</h2>
                          <asp:Label Text="" ID="lblMessage" runat="server" />

                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="exampleInputUsername1">First Name</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtName" required="" placeholder="UserName" />
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputUsername1">Middle Name</label>
                                    <asp:TextBox runat="server" class="form-control" ID="txtmidlename" required="" placeholder="UserName" />
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputUsername1">Last Name</label>
                                    <asp:TextBox runat="server" class="form-control" ID="txtlastname" required="" placeholder="UserName" />
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
                                    <label for="txtAlternateMobile">Alternate Mobile Number:</label>
                                    <asp:TextBox ID="txtAlternateMobile" CssClass="form-control" runat="server" />
                                </div>
                            </div>
                            <div class="col-6">

                                <div class="form-group">
                                    <label for="ddlCountry">Country:</label>
                                   <%-- <asp:DropDownList ID="ddlCountry" runat="server" CssClass="form-control">
                                        <asp:ListItem Text="Select Country" Value="" />
                                        <asp:ListItem Text="Country1" Value="Country1" />
                                        <asp:ListItem Text="Country2" Value="Country2" />

                                    </asp:DropDownList>--%>
                                    <asp:TextBox ID="txtcountry" CssClass="form-control" runat="server" />

                                </div>
                                <div class="form-group">
                                    <label for="ddlState">State:</label>
<%--                                    <asp:DropDownList ID="ddlState" CssClass="form-control" runat="server">
                                        <asp:ListItem Text="Select State" Value="" />

                                    </asp:DropDownList>--%>

                                      <asp:TextBox ID="txtstate" CssClass="form-control" runat="server" />

                                </div>
                                <div class="form-group">
                                    <label for="txtCity">City:</label>
                                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" />
                                </div>
                                <div class="form-group">
                                    <label for="txtReferenceName">Reference Name:</label>
                                    <asp:TextBox ID="txtReferenceName" runat="server" CssClass="form-control" />
                                </div>
                                <div class="form-group">
                                    <label for="txtReferenceMobile">Reference Mobile:</label>
                                    <asp:TextBox ID="txtReferenceMobile" runat="server" CssClass="form-control" />
                                </div>

                                <div class="form-group">
                                    <label for="txtAddress">Address:</label>
                                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputUsername1">Gender</label>

                                 <asp:RadioButtonList runat="server"  ID="rdbGender" required="true">
                                                        <asp:ListItem Text="Male" />
                                                        <asp:ListItem Text="Female" />
                                                    </asp:RadioButtonList>


                               
                            </div>
                             </div>
                                    <asp:Button ID="btnsave" Text="save" class="width-30 pull-left btn btn-success" OnClick="btnsave_Click"  runat="server" />
                                    <asp:Button ID="btnCancel" Text="Cancel" class="width-30 pull-left btn btn-danger" OnClick="btnCancel_Click" runat="server" />
                              
                    </div>
                </div>
            </div>
        </div>
        </div>
</asp:Content>

