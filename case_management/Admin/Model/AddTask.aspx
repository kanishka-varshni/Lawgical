<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.master" AutoEventWireup="true" CodeFile="AddTask.aspx.cs" Inherits="AddTask" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="content-wrapper">
        <div class="row">
            <div class="col-sm-8 grid-margin stretch-card">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title">Add Task</h5>
                         <asp:Label Text="" ID="lblMessage" runat="server" />
                    </div>
                    <div class="card-body m-3">
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="txtReferenceName">Subject</label>
                                    <asp:TextBox ID="txtsubject" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="txtReferenceName">Start Date</label>
                                    <asp:TextBox ID="txtstartdate" runat="server" TextMode="Date" CssClass="form-control" />
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="txtReferenceName">Deadline</label>
                                    <asp:TextBox ID="txtdeadline" runat="server" TextMode="Date" CssClass="form-control" />
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="ddlCountry">Case Status</label>
                                    <asp:DropDownList ID="ddlcaseStatus" runat="server" CssClass="form-control">
                                       

                                    </asp:DropDownList>

                                    <%--<asp:TextBox runat="server" ID="txtCountry"  CssClass="form-control" />--%>
                                </div>
                            </div>
                             <div class="col-6">
                                <div class="form-group">
                                    <label for="ddlCountry">Priority</label>
                                    <asp:DropDownList ID="ddlPriority" runat="server" CssClass="form-control">
                                        <asp:ListItem Text="Select Priority" Value="" />
                                        <asp:ListItem Text="Low" Value="1" />
                                        <asp:ListItem Text="Medium" Value="2" />
                                        <asp:ListItem Text="High" Value="3" />
                                        <asp:ListItem Text="Urgent" Value="4" />

                                    </asp:DropDownList>
                                </div>
                            </div>
                             <div class="col-6">
                                <div class="form-group">
                                    <label for="txtReferenceName">Assign To</label>
                                    <asp:TextBox ID="txtassito" runat="server" CssClass="form-control" />
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="ddlCountry">Related To</label>
                                    <asp:DropDownList ID="ddlrelatedto" runat="server" CssClass="form-control">
                                        <asp:ListItem Text="Select Priority" Value="" />
                                        <asp:ListItem Text="Case" Value="1" />
                                        <asp:ListItem Text="Others" Value="2" />

                                    </asp:DropDownList>
                                </div>
                            </div>
                              <div class="col-6">
                                <div class="form-group">
                                    <label for="ddlCountry">Case</label>
                                    <asp:DropDownList ID="ddlcaseclient" runat="server" CssClass="form-control">
                                       

                                    </asp:DropDownList>
                                </div>
                            </div>

                           <div class="col-6">
                                <div class="form-group">
                                    <label for="txtReferenceName">Description</label>
                                    <asp:TextBox ID="txtDesc" runat="server" CssClass="form-control" TextMode="MultiLine" />
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
    
</asp:Content>

