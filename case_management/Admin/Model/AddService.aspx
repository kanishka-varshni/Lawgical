<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.master" AutoEventWireup="true" CodeFile="AddService.aspx.cs" Inherits="Model_AddService" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="content-wrapper">
        <div class="row">
            <div class="col-sm-8 grid-margin stretch-card">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title">Add Service</h5>

                    </div>
                     <asp:Label Text="" ID="lblMessage" runat="server" />
                    <div class="card-body m-3">
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="txtReferenceName">Name</label>
                                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                             <div class="col-6">
                                <div class="form-group">
                                    <label for="txtReferenceName">Amount</label>
                                    <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer">
                         <asp:Button ID="btnSave" Text="save" CssClass="width-50  btn btn-success" runat="server" OnClick="btnSave_Click" />
                         <asp:Button ID="btnCancel" Text="close" CssClass="width-50  btn btn-danger" runat="server" OnClick="btnCancel_Click" />
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>

