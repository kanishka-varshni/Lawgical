<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.master" AutoEventWireup="true" CodeFile="service.aspx.cs" Inherits="service" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="content-wrapper">
        <div class="row">
            <div class="col-sm-8 grid-margin stretch-card">
                <div class="card">
                    <div class="card-header">
                        <div class="row">
                            <h2 class="text-primary col-10">Service</h2>
                            <div class="float-right">
                                <a href="Model/AddService.aspx" class="width-50 btn btn-primary"><span class="text-white">+ </span>Add Service</a>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                          <div class="col-lg-12" <%--style="overflow: scroll"--%>>
                        <asp:GridView ID="grid_show" runat="server" CssClass="table table-bordered" PageSize="5"   AllowPaging="true" DataSourceID="SqlDataSource1" AutoGenerateColumns="false" DataKeyNames="Id">
                            <Columns>
                                <asp:CommandField ShowEditButton="True"  ControlStyle-CssClass="btn btn-success" ButtonType="Button" />
                                <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="btn btn-danger" ButtonType="Button" />

                                <asp:BoundField DataField="Name" HeaderText="Name" />
                                <asp:BoundField DataField="Amount" HeaderText="Amount" />

                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 

                            ConnectionString="<%$ ConnectionStrings:Connect %>"
                            
                            SelectCommand="SELECT * FROM [AddService_tbl]" 
                            
                            DeleteCommand="DELETE FROM [AddService_tbl] WHERE [Id] = @Id"


                            UpdateCommand="UPDATE [AddService_tbl] SET  [Name] = @Name,[Amount]=@Amount
                           
                            WHERE [Id] = @Id">


                            <DeleteParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                            </DeleteParameters>

                            <UpdateParameters>
                                <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Amount" Type="String" />
                              
                            </UpdateParameters>
                            
                        </asp:SqlDataSource>


                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

