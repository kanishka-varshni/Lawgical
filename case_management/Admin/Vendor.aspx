<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.master" AutoEventWireup="true" CodeFile="Vendor.aspx.cs" Inherits="Vendor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="content-wrapper">
        <div class="row">
            <div class="col-sm-8 grid-margin stretch-card">
                <div class="card">
                    <div class="card-header">
                        <div class="row">
                            <h2 class="text-primary col-10">Vendor</h2>
                            <div class="float-right">
                                <a href="Model/AddVendor.aspx" class="width-50 btn btn-primary"><span class="text-white">+ </span>Add Vendor</a>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <asp:GridView ID="grid_show" runat="server" CssClass="table table-bordered" PageSize="5"   AllowPaging="true" DataSourceID="SqlDataSource1" AutoGenerateColumns="false" DataKeyNames="Id">
                            <Columns>

                                <asp:CommandField ShowEditButton="True"  ControlStyle-CssClass="btn btn-success" ButtonType="Button" />
                                <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="btn btn-danger" ButtonType="Button" />
                                
                                <asp:BoundField DataField="CmpnyName" HeaderText=" Client Name" HeaderStyle-BackColor="YellowGreen" />

                                   <asp:BoundField DataField="FistName" HeaderText="Middle_Name" HeaderStyle-BackColor="YellowGreen" />
                                   <asp:BoundField DataField="LastName" HeaderText="Last Name" HeaderStyle-BackColor="YellowGreen" />
                                   <asp:BoundField DataField="Email" HeaderText="Email ID" HeaderStyle-BackColor="YellowGreen" />
                                   <asp:BoundField DataField="MblNo" HeaderText="Mobile No" HeaderStyle-BackColor="YellowGreen" />
                                   <asp:BoundField DataField="AlterMblNo" HeaderText="Alternate No" HeaderStyle-BackColor="YellowGreen" />
                                   <asp:BoundField DataField="Address" HeaderText="Address" HeaderStyle-BackColor="YellowGreen" />
                                   <asp:BoundField DataField="Country" HeaderText="Country" HeaderStyle-BackColor="YellowGreen" />
                                   <asp:BoundField DataField="State" HeaderText="State" HeaderStyle-BackColor="YellowGreen" />
                                   <asp:BoundField DataField="City" HeaderText="city" HeaderStyle-BackColor="YellowGreen" />
                                  <asp:BoundField DataField="GSTIN" HeaderText="GSTIN" HeaderStyle-BackColor="YellowGreen" />
                                  <asp:BoundField DataField="PAN" HeaderText="PAN" HeaderStyle-BackColor="YellowGreen" />
                            </Columns>
                        </asp:GridView>

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:Connect %>"
                            SelectCommand="SELECT * FROM [AddVendor_tbl]" 
                            DeleteCommand="DELETE FROM [AddVendor_tbl] WHERE [Id] = @Id"
                            UpdateCommand="UPDATE [AddVendor_tbl] SET  [CmpnyName] = @CmpnyName,[FistName] = @FistName,
                            [Last_name] = @Last_name,
                            [Email] = @Email,
                            [MblNo] = @MblNo,
                            [AlterMblNo] = @AlterMblNo,
                            [Address] = @Address,
                            [Country] = @Country,
                            [State] = @State,
                            [City] = @City,
                            [GSTIN] = @GSTIN,
                             [PAN] = @PAN
                           
                            WHERE [Id] = @Id">


                            <DeleteParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                            </DeleteParameters>

                            <UpdateParameters>
                                <asp:Parameter Name="CmpnyName" Type="String" />
                                  <asp:Parameter Name="FistName" Type="String" />
                                  <asp:Parameter Name="Last_name" Type="String" />
                                  <asp:Parameter Name="Email" Type="String" />
                                 <asp:Parameter Name="MblNo" Type="String" />
                                  <asp:Parameter Name="AlterMblNo" Type="String" />
                                  <asp:Parameter Name="Address" Type="String" />
                                  <asp:Parameter Name="Country" Type="String" />
                                  <asp:Parameter Name="State" Type="String" />
                                  <asp:Parameter Name="City" Type="String" />
                                  <asp:Parameter Name="GSTIN" Type="String" />
                                  <asp:Parameter Name="PAN" Type="String" />
                                 
                              
                            </UpdateParameters>
                            
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

