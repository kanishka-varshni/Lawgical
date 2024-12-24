<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.master" AutoEventWireup="true" CodeFile="Member.aspx.cs" Inherits="Member" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-sm-8 grid-margin stretch-card">
                <div class="card">
                    <div class="card-header">
                        <div class="row">
                            <h2 class="text-primary col-9">Members</h2>
                            <div class="float-right">
                                <a href="Model/AddMember.aspx" class="width-50 btn btn-primary"><span class="text-white">+ </span>Add Member</a>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <asp:GridView ID="grid_show" runat="server" CssClass="table table-bordered" PageSize="5" AllowPaging="true" DataSourceID="SqlDataSource1" AutoGenerateColumns="false" DataKeyNames="Id">
                            <Columns>

                                <asp:CommandField ShowEditButton="True" ControlStyle-CssClass="btn btn-success" ButtonType="Button" />
                                <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="btn btn-danger" ButtonType="Button" />

                                <asp:BoundField DataField="FirstName" HeaderText="First Name" HeaderStyle-BackColor="YellowGreen" />
                                <asp:BoundField DataField="LastName" HeaderText="Last Name" HeaderStyle-BackColor="YellowGreen" />
                                <asp:BoundField DataField="Email" HeaderText="Email" HeaderStyle-BackColor="YellowGreen" />
                                <asp:BoundField DataField="MblNo" HeaderText="MblNo" HeaderStyle-BackColor="YellowGreen" />
                                <asp:BoundField DataField="Address" HeaderText="Address" HeaderStyle-BackColor="YellowGreen" />
                                <asp:BoundField DataField="Country" HeaderText="Current Password" HeaderStyle-BackColor="YellowGreen" />
                                <asp:BoundField DataField="State" HeaderText="State" HeaderStyle-BackColor="YellowGreen" />
                                <asp:BoundField DataField="City" HeaderText="City" HeaderStyle-BackColor="YellowGreen" />
                                <asp:BoundField DataField="Role" HeaderText="Role" HeaderStyle-BackColor="YellowGreen" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                            ConnectionString="<%$ ConnectionStrings:Connect %>"
                            SelectCommand="SELECT * FROM [AddMember_tbl]"
                            DeleteCommand="DELETE FROM [AddMember_tbl] WHERE [Id] = @Id"
                            UpdateCommand="UPDATE [AddMember_tbl] SET  [Email] = @Subject,[FirstName] = @FirstName,
                            [LastName] = @LastName,
                            [Email] = @Email,
                            [MblNo] = @MblNo,
                            [Address] = @Address,
                            [Country] = @Country,
                            [Password] = @Password,
                            [CPassword] = @CPassword,
                            [State] = @State,
                            [City]=@City,
                            [Role]=@Role

                            WHERE [Id] = @Id">


                            <DeleteParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                            </DeleteParameters>

                            <UpdateParameters>
                                <asp:Parameter Name="FirstName" Type="String" />
                                <asp:Parameter Name="LastName" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="MblNo" Type="String" />
                                <asp:Parameter Name="Address" Type="String" />
                               
                                <asp:Parameter Name="Country" Type="String" />
                                <asp:Parameter Name="State" Type="String" />
                                <asp:Parameter Name="City" Type="String" />
                                <asp:Parameter Name="Role" Type="String" />
                            </UpdateParameters>

                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

