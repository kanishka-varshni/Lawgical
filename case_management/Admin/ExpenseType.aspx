<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.master" AutoEventWireup="true" CodeFile="ExpenseType.aspx.cs" Inherits="ExpenseType" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-sm-8 grid-margin stretch-card">
                <div class="card">
                    <div class="card-header">
                        <div class="row">
                            <h2 class="text-primary col-10">Expense Type</h2>
                            <div class="float-right">
                                <a href="Model/AddExpenseType.aspx" class="width-50 btn btn-primary"><span class="text-white">+ </span>Add Expense Type</a>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <%-- grid here --%>
                        <asp:GridView ID="grid_show" runat="server" CssClass="table table-bordered" PageSize="5" AllowPaging="true" DataSourceID="SqlDataSource1" AutoGenerateColumns="false" DataKeyNames="Id">
                            <Columns>

                                <asp:CommandField ShowEditButton="True" ControlStyle-CssClass="btn btn-success" ButtonType="Button" />
                                <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="btn btn-danger" ButtonType="Button" />

                                <asp:BoundField DataField="Name" HeaderText="Name" />
                                <asp:BoundField DataField="Description" HeaderText="Description" />




                            </Columns>
                        </asp:GridView>



                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                            ConnectionString="<%$ ConnectionStrings:Connect %>"
                            SelectCommand="SELECT * FROM [AddExpenseType_tbl]"
                            DeleteCommand="DELETE FROM [AddExpenseType_tbl] WHERE [Id] = @Id"
                            UpdateCommand="UPDATE [AddExpenseType_tbl] SET  [Name] = @Name, [Description] = @Description
                           
                            WHERE [Id] = @Id">


                            <DeleteParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                            </DeleteParameters>

                            <UpdateParameters>
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="Description" Type="String" />

                            </UpdateParameters>

                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

