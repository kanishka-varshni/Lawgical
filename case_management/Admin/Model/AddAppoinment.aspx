<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.master" AutoEventWireup="true" CodeFile="AddAppoinment.aspx.cs" Inherits="Model_AddAppoinment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-sm-8 grid-margin stretch-card">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title">Add Appoinment</h5>
                    </div>
                    <div class="card-body m-3">
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <asp:radiobutton id="MaleRadioButton" runat="server" text="New Client" groupname="genderGroup" />
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <asp:radiobutton id="FemaleRadioButton" runat="server" text="Existing Client" groupname="genderGroup" />
                                </div>
                            </div>
                        
                      
                        <div class="col-6">
                            <div class="form-group">
                                <label for="exampleInputUsername1">New Client Name</label>
                                <asp:textbox runat="server" class="form-control" id="TextBox2" required="" placeholder="UserName" />
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label for="txtMobile">Mobile Number:</label>
                                <asp:textbox id="txtMobile" runat="server" cssclass="form-control" />
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label for="txtMobile">Date</label>
                                <asp:textbox id="txtDate" runat="server" cssclass="form-control" TextMode="Date" />
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label for="txtMobile">Time</label>
                                <asp:textbox id="txtTime" runat="server" cssclass="form-control"  TextMode="DateTimeLocal" />
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label for="txtAddress">Note</label>
                                <asp:textbox id="txtAddress" runat="server" cssclass="form-control" textmode="MultiLine" rows="3" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <asp:button id="btnSave" text="save" cssclass="width-50  btn btn-success" runat="server" />
                    <asp:button id="btnCancel" text="close" cssclass="width-50  btn btn-danger" runat="server" />
                </div>
            </div>
        </div>
    </div>
  


</asp:Content>

