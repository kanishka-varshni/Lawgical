<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.master" AutoEventWireup="true" CodeFile="AddVendor.aspx.cs" Inherits="Model_AddVendor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-sm-8 grid-margin stretch-card">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title">Add Vendor</h5>
                    </div>
                     <asp:Label Text="" ID="lblMessage" runat="server" />
                    <div class="card-body m-3">
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="txtReferenceName">Company Name</label>
                                    <asp:TextBox ID="txtCompName" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="exampleInputUsername1">First Name</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtName" required="" />
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="exampleInputUsername1">Last Name</label>
                                    <asp:TextBox runat="server" class="form-control" ID="txtLName" required="" />
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="txtEmail">Email:</label>
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" />
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="txtMobile">Mobile Number</label>
                                    <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="txtAlternateMobile">Alternate Mobile Number</label>
                                    <asp:TextBox ID="txtAlternateMobile" CssClass="form-control" runat="server" />
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="txtAddress">Address</label>
                                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="ddlCountry">Country</label>
                                   <%-- <asp:DropDownList ID="ddlCountry" runat="server" CssClass="form-control">
                                        <asp:ListItem Text="Select Country" Value="" />
                                    </asp:DropDownList>--%>

                                      <asp:TextBox ID="txtCountry" runat="server" CssClass="form-control"   Rows="3" />
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="ddlCountry">State</label>
                                     <asp:TextBox ID="txtState" runat="server" CssClass="form-control">
                                       <%-- <asp:ListItem Text="Select Country" Value="" />--%>
                                    </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="ddlCountry">City</label>
                                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control">
                                       <%-- <asp:ListItem Text="Select Country" Value="" />--%>
                                    </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="exampleInputUsername1">GSTIN</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtGST" required=""/>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="exampleInputUsername1">PAN</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtPAN" required=""/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <asp:Button ID="btnSave" Text="save" CssClass="width-50  btn btn-success" runat="server" OnClick="btnSave_Click" />
                        <asp:Button ID="btnCancel" Text="close" CssClass="width-50  btn btn-danger" runat="server" OnClick="btnCancel_Click"/>
                    </div>

                </div>
            </div>
        </div>
    </div>

</asp:Content>

