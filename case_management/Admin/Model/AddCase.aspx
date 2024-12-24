<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.master" AutoEventWireup="true" CodeFile="AddCase.aspx.cs" Inherits="Model_AddCase" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-sm-8 grid-margin stretch-card">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title">Add Case</h5>
                          <asp:Label Text="" ID="lblMessage" runat="server" />

                    </div>
                    <div class="card-body m-3">
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="ddlClients">Select Client:</label>
                                    <asp:DropDownList ID="ddlcaseclient" runat="server" CssClass="form-control">


                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label>Role:</label>

                                      <asp:DropDownList ID="ddlrole" runat="server" CssClass="form-control">

                                          <asp:ListItem Text="Petitioner" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="Respondent" Value="2"></asp:ListItem>

                                        </asp:DropDownList>


                                  <%--  <asp:RadioButtonList ID="rbRole" runat="server" CssClass="form-control">
                                        <asp:ListItem Text="Petitioner" Value="Petitioner"></asp:ListItem>
                                        <asp:ListItem Text="Respondent" Value="Respondent"></asp:ListItem>
                                    </asp:RadioButtonList>--%>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="txtRespondentName">Respondent Name:</label>
                                    <asp:TextBox ID="txtRespondentName" runat="server" placeholder="Enter Respondent Name" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="txtAdvocateName">Respondent Advocate:</label>
                                    <asp:TextBox ID="txtAdvocateName" runat="server" placeholder="Enter Advocate Name" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="card-header">
                            <h5 class="card-title">Case Details</h5>
                        </div>
                        <div class="card-body mt-5">
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="txtCaseNo">Case No:</label>
                                        <asp:TextBox ID="txtCaseNo" runat="server" placeholder="Enter Case No" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="ddlCaseType">Case Type:</label>
                                        <asp:DropDownList ID="ddlCaseType" runat="server" CssClass="form-control">

                                            <%--<asp:ListItem Text="Type 1" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="Type 2" Value="2"></asp:ListItem>--%>

                                        </asp:DropDownList>
                                    </div>
                                </div>
                              <%--  <div class="col-6">
                                    <div class="form-group">
                                        <label for="ddlCaseSubType">Case Sub Type:</label>
                                        <asp:DropDownList ID="ddlCaseSubType" runat="server" CssClass="form-control">
                                        </asp:DropDownList>
                                    </div>
                                </div>--%>
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="ddlCaseStage">Case Stage:</label>
                                        <asp:DropDownList ID="ddlcaseStatus" runat="server" CssClass="form-control">

                                           <%-- <asp:ListItem Text="Stage 1" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="Stage 2" Value="2"></asp:ListItem>--%>

                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <label>Priority:</label>
                                          <asp:DropDownList ID="ddlPriority" runat="server" CssClass="form-control">
                                        <asp:ListItem Text="Select Priority" Value="" />
                                        <asp:ListItem Text="Low" Value="1" />
                                        <asp:ListItem Text="Medium" Value="2" />
                                        <asp:ListItem Text="High" Value="3" />
                                        <asp:ListItem Text="Urgent" Value="4" />

                                    </asp:DropDownList>

                                        <%--<asp:RadioButtonList ID="rbPriority" runat="server" CssClass="form-control">
                                            <asp:ListItem Text="High" Value="High"></asp:ListItem>
                                            <asp:ListItem Text="Medium" Value="Medium"></asp:ListItem>
                                            <asp:ListItem Text="Low" Value="Low"></asp:ListItem>
                                        </asp:RadioButtonList>--%>
                                    </div>
                                </div>

                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="txtAct">Act:</label>
                                        <asp:TextBox ID="txtAct" runat="server" placeholder="Enter Act" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="txtFilingNumber">Filing Number:</label>
                                        <asp:TextBox ID="txtFilingNumber" runat="server" placeholder="Enter Filing Number" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="txtRegistrationNumber">Registration Number:</label>
                                        <asp:TextBox ID="txtRegistrationNumber" runat="server" placeholder="Enter Registration Number" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="txtRegistrationDate">Registration Date:</label>
                                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Police Station" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="txtCNRNumber">CNR Number:</label>
                                        <asp:TextBox ID="txtCNRNumber" runat="server" placeholder="Enter CNR Number" CssClass="form-control"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="txtDescription">Description:</label>
                                        <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="4" placeholder="Enter Description" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="card-header">
                            <h5 class="card-title">FIR Details</h5>
                        </div>
                        <div class="card-body mt-5">
                            <div class="row">
                                <div class="col-4">
                                    <div class="form-group">
                                        <label for="txtPoliceStation">Police Station:</label>
                                        <asp:TextBox ID="txtPoliceStation" runat="server" placeholder="Enter Police Station" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="form-group">
                                        <label for="txtFIRNumber">FIR Number:</label>
                                        <asp:TextBox ID="txtFIRNumber" runat="server" placeholder="Enter FIR Number" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="form-group">
                                        <label for="txtFIRDate">FIR Date:</label>
                                        <asp:TextBox ID="txtFIRDate" runat="server" placeholder="Enter FIR Date" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-header">
                            <h5 class="card-title">Court Details</h5>
                        </div>
                        <div class="card-body mt-5">
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="txtCourtNo">Court No:</label>
                                        <asp:TextBox ID="txtCourtNo" runat="server" placeholder="Enter Court No" CssClass="form-control"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="ddlCourtType">Court Type:</label>
                                        <asp:DropDownList ID="ddlCourtType" runat="server" CssClass="form-control">

                                            <asp:ListItem Text="Type 1" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="Type 2" Value="2"></asp:ListItem>

                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="ddlCourt">Court:</label>
                                        <asp:DropDownList ID="ddlCourt" runat="server" CssClass="form-control">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="ddlJudgeType">Judge Type:</label>
                                        <asp:DropDownList ID="ddlJudgeType" runat="server" CssClass="form-control">

                                           <%-- <asp:ListItem Text="Type A" Value="A"></asp:ListItem>
                                            <asp:ListItem Text="Type B" Value="B"></asp:ListItem>--%>

                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="txtJudgeName">Judge Name:</label>
                                        <asp:TextBox ID="txtJudgeName" runat="server" placeholder="Enter Judge Name" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="txtRemarks">Remarks:</label>
                                        <asp:TextBox ID="txtRemarks" runat="server" TextMode="MultiLine" Rows="4" placeholder="Enter Remarks" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="card-header">
                            <h5 class="card-title">Task Assignment</h5>
                        </div>
                        <div class="card-body mt-5">
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="ddlUsers">Assign To:</label>
                                        <asp:DropDownList ID="ddlUsers" runat="server" CssClass="form-control">

                                            <asp:ListItem Text="User 1" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="User 2" Value="2"></asp:ListItem>

                                        </asp:DropDownList>
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
        </div>
</asp:Content>

