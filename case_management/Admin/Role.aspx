<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.master" AutoEventWireup="true" CodeFile="Role.aspx.cs" Inherits="Role" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="content-wrapper">
        <div class="row">
            <div class="col-sm-8 grid-margin stretch-card">
                <div class="card">
                    <div class="card-header">
                        <div class="row">
                            <h2 class="text-primary col-9">Role</h2>
                            <div class="float-right">
                                <a href="Model/AddRole.aspx" class="width-50 btn btn-primary"><span class="text-white">+ </span>Add Role</a>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <%-- grid here --%>
                         <div class="col-lg-12" <%--style="overflow: scroll"--%>>

                        <asp:GridView ID="grid_show" runat="server" CssClass="table table-bordered" PageSize="5"   AllowPaging="true" DataSourceID="SqlDataSource1" AutoGenerateColumns="false" DataKeyNames="Id">
                            <Columns>

                                <asp:CommandField ShowEditButton="True"  ControlStyle-CssClass="btn btn-success" ButtonType="Button" />
                                <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="btn btn-danger" ButtonType="Button" />
                                
                                <asp:BoundField DataField="RoleName" HeaderText="Role Name" />
                                <asp:BoundField DataField="RoleDes" HeaderText=" Role Description" />
                            </Columns>
                        </asp:GridView>



                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 

                            ConnectionString="<%$ ConnectionStrings:Connect %>"
                            
                            SelectCommand="SELECT * FROM [AddRole_tbl]" 
                            
                            DeleteCommand="DELETE FROM [AddRole_tbl] WHERE [Id] = @Id"


                            UpdateCommand="UPDATE [AddRole_tbl] SET  [RoleName] = @RoleName,[RoleDes] = @RoleDes
                           
                            WHERE [Id] = @Id">


                            <DeleteParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                            </DeleteParameters>

                            <UpdateParameters>
                                <asp:Parameter Name="RoleName" Type="String" />
                                <asp:Parameter Name="RoleDes" Type="String" />
                              
                            </UpdateParameters>
                            
                        </asp:SqlDataSource>


                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

