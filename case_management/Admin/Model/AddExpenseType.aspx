<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.master" AutoEventWireup="true" CodeFile="AddExpenseType.aspx.cs" Inherits="Model_AddExpenseType" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="content-wrapper">
        <div class="row">
            <div class="col-sm-8 grid-margin stretch-card">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title">Add Expense</h5>
                         <asp:Label Text="" ID="lblMessage" runat="server" />
                    </div>
                    <div class="card-body m-3">
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="txtReferenceName">Name</label>
                                    <asp:TextBox ID="txtExpName" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="txtReferenceName">Description</label>
                                    <asp:TextBox ID="txtExpDes" runat="server" CssClass="form-control" TextMode="Multiline" Rows="4" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <asp:Button ID="btnSave" Text="save" CssClass="width-50  btn btn-success" OnClick="btnSave_Click" runat="server" />
                        <asp:Button ID="btnCancel" Text="close" CssClass="width-50  btn btn-danger" OnClick="btnCancel_Click" runat="server" />
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>

