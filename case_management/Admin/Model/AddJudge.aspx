<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.master" AutoEventWireup="true" CodeFile="AddJudge.aspx.cs" Inherits="Model_AddJudge" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-sm-8 grid-margin stretch-card">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title">Add Judge</h5>

                         <asp:Label Text="" ID="lblMessage" runat="server" />

                    </div>
                    <div class="card-body m-3">
                        <div class="row">

                            <div class="col-12">

                                <div class="form-group">
                                    <label for="txtReferenceName">Judge</label>
                                    <asp:TextBox ID="txtJudge" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <asp:Button ID="btnCancel" Text="close" CssClass="width-50  btn btn-danger" OnClick="btnCancel_Click" runat="server" />

                        <asp:Button ID="btnSave" Text="save" CssClass="width-50  btn btn-success" OnClick="btnSave_Click" runat="server" />
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>

