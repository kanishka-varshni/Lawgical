<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.master" AutoEventWireup="true" CodeFile="AddTax.aspx.cs" Inherits="Model_AddTax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-sm-8 grid-margin stretch-card">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title">Add Tax</h5>
                    </div>
                      <asp:Label Text="" ID="lblMessage" runat="server" />
                    <div class="card-body m-3">
                        <div class="row">
                           
                            <div class="col-6">

                                <div class="form-group">
                                    <label for="txtReferenceName">Name</label>
                                    <asp:TextBox ID="txtCourt" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                             <div class="col-6">

                                <div class="form-group">
                                    <label for="txtReferenceName">Tax Rate(%)</label>
                                    <asp:TextBox ID="TxtTaxRate" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                     <label for="txtReferenceName">Note</label>
                                    <asp:TextBox TextMode="MultiLine" CssClass="form-control" runat="server" placeholder="Type Something" id="txtNotes"/>

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

