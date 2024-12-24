<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.master" AutoEventWireup="true" CodeFile="Task.aspx.cs" Inherits="Task" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="content-wrapper">
        <div class="row">
            <div class="col-sm-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-header">
                        <div class="row">
                            <h2 class="text-primary col-9">Task</h2>
                            <div class="float-right">
                                <a href="Model/AddTask.aspx" class="width-50 btn btn-primary"><span class="text-white">+ </span>Add Task</a>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <%-- grid here --%>

                          <div class="col-lg-12" style="overflow: scroll" >

                        <asp:GridView ID="grid_show" runat="server" CssClass="table table-bordered" PageSize="5"   AllowPaging="true" DataSourceID="SqlDataSource1" AutoGenerateColumns="false" DataKeyNames="Id">
                            <Columns>

                                <asp:CommandField ShowEditButton="True"  ControlStyle-CssClass="btn btn-success" ButtonType="Button" />
                                <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="btn btn-danger" ButtonType="Button" />
                                
                                    <asp:BoundField DataField="Subject" HeaderText="Subject" HeaderStyle-BackColor="YellowGreen" />
                                   <asp:BoundField DataField="StartDate" HeaderText="StartDate" HeaderStyle-BackColor="YellowGreen" />
                                   <asp:BoundField DataField="EndDate" HeaderText="EndDate" HeaderStyle-BackColor="YellowGreen" />
                                   <asp:BoundField DataField="SelectStsId" HeaderText="SelectStsId" HeaderStyle-BackColor="YellowGreen" />
                                   <asp:BoundField DataField="SelectStatus" HeaderText="SelectStatus" HeaderStyle-BackColor="YellowGreen" />
                                   <asp:BoundField DataField="Priority" HeaderText="Priority" HeaderStyle-BackColor="YellowGreen" />
                                   <asp:BoundField DataField="AssignTo" HeaderText="AssignTo" HeaderStyle-BackColor="YellowGreen" />
                                   <asp:BoundField DataField="RelatedTo" HeaderText="RelatedTo" HeaderStyle-BackColor="YellowGreen" />
                                   <asp:BoundField DataField="Case_1" HeaderText="Case_1" HeaderStyle-BackColor="YellowGreen" />
                                   <asp:BoundField DataField="Description" HeaderText="Description" HeaderStyle-BackColor="YellowGreen" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:Connect %>"
                            SelectCommand="SELECT * FROM [AddTask_tbl]" 
                            DeleteCommand="DELETE FROM [AddTask_tbl] WHERE [Id] = @Id"
                            UpdateCommand="UPDATE [AddTask_tbl] SET  [Subject] = @Subject,[StartDate] = @StartDate,
                            [EndDate] = @EndDate,
                            [SelectStsId] = @SelectStsId,
                            [SelectStatus] = @SelectStatus,
                            [Priority] = @Priority,
                            [AssignTo] = @AssignTo,
                            [RelatedTo] = @RelatedTo,
                            [Case_1] = @Case_1,
                            [Description] = @Description
                          
                           
                            WHERE [Id] = @Id">


                            <DeleteParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                            </DeleteParameters>

                            <UpdateParameters>
                                <asp:Parameter Name="Name" Type="String" />
                                  <asp:Parameter Name="Middle_Name" Type="String" />
                                  <asp:Parameter Name="Last_name" Type="String" />
                                  <asp:Parameter Name="Emailid" Type="String" />
                                 <asp:Parameter Name="MobileNo" Type="String" />
                                  <asp:Parameter Name="Alternateno" Type="String" />
                                  <asp:Parameter Name="address" Type="String" />
                                  <asp:Parameter Name="counrty" Type="String" />
                                  <asp:Parameter Name="state" Type="String" />
                                  <asp:Parameter Name="city" Type="String" />
                                  <asp:Parameter Name="Reference" Type="String" />
                                  <asp:Parameter Name="refernceNo" Type="String" />
                                 
                              
                            </UpdateParameters>
                            
                        </asp:SqlDataSource>


                    </div>


                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

