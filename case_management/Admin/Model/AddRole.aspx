<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.master" AutoEventWireup="true" CodeFile="AddRole.aspx.cs" Inherits="Model_AddRole" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="content-wrapper">
        <div class="row">
            <div class="col-sm-8 grid-margin stretch-card">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title">Add Role</h5>
                          <asp:Label Text="" ID="lblMessage" runat="server" />
                    </div>
                    <div class="card-body m-3">
                        <div class="row">
                             <div class="col-6">

                                <div class="form-group">
                                    <label for="txtReferenceName">Role Name</label>
                                    <asp:TextBox ID="txtRoleName" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                            <div class="col-6">

                                <div class="form-group">
                                    <label for="txtReferenceName">Role Description</label>
                                    <asp:TextBox ID="txtRoleDes" runat="server" CssClass="form-control" TextMode="MultiLine" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer">
                       

                        <asp:Button ID="btnSave" Text="save" CssClass="width-50  btn btn-success" OnClick="btnSave_Click1" runat="server" />
                         <asp:Button ID="btnCancel" Text="close" CssClass="width-50  btn btn-danger" OnClick="btnCancel_Click1" runat="server" />
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>

