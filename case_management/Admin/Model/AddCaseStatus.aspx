<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.master" AutoEventWireup="true" CodeFile="AddCaseStatus.aspx.cs" Inherits="Model_AddCaseStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="content-wrapper">
        <div class="row">
            <div class="col-sm-8 grid-margin stretch-card">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title">Add Case Status</h5>
                    </div>
                    <div class="card-body m-3">
                        <div class="row">
                            
                            <div class="col-12">

                                <div class="form-group">
                                    <label for="txtReferenceName">Case Status</label>
                                       <asp:Label Text="" ID="lblMessage" runat="server" />
                                </div>
                            </div>
                        </div>
                   <div class="row">
                            <div class="col-6">
                                <%--<div class="form-group">
                                    <label for="ddlCountry">Case Type</label>
                                    <asp:DropDownList ID="ddlCountry" runat="server" CssClass="form-control">
                                        <asp:ListItem Text="Select Case Type" Value="" />
                                        <asp:ListItem Text="Country1" Value="Country1" />
                                        <asp:ListItem Text="Country2" Value="Country2" />

                                    </asp:DropDownList>
                                </div>--%>
                            </div>
                            <div class="col-6">

                                <div class="form-group">
                                    <label for="txtReferenceName">Case Status</label>
                                    <asp:TextBox ID="txtReferenceName" runat="server" CssClass="form-control" />
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

