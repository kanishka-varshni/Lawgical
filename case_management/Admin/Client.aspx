<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.master" AutoEventWireup="true" CodeFile="Client.aspx.cs" Inherits="Client" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-sm-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-header">
                        <div class="row"> 
                            <h2 class="text-primary col-10">Client</h2>
                            <div class="float-right">
                                <a href="Model/AddClient.aspx" class="width-50 btn btn-primary"><span class="text-white">+ </span>Add Client</a>
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
                                
                                <asp:BoundField DataField="Name" HeaderText=" Client Name" HeaderStyle-BackColor="YellowGreen" />

                                   <asp:BoundField DataField="Middle_Name" HeaderText="Middle_Name" HeaderStyle-BackColor="YellowGreen" />
                                   <asp:BoundField DataField="Last_name" HeaderText="Last Name" HeaderStyle-BackColor="YellowGreen" />
                                   <asp:BoundField DataField="Emailid" HeaderText="Email ID" HeaderStyle-BackColor="YellowGreen" />
                                   <asp:BoundField DataField="MobileNo" HeaderText="Mobile No" HeaderStyle-BackColor="YellowGreen" />
                                   <asp:BoundField DataField="Alternateno" HeaderText="Alternate No" HeaderStyle-BackColor="YellowGreen" />
                                   <asp:BoundField DataField="address" HeaderText="address" HeaderStyle-BackColor="YellowGreen" />
                                   <asp:BoundField DataField="counrty" HeaderText="counrty" HeaderStyle-BackColor="YellowGreen" />
                                   <asp:BoundField DataField="state" HeaderText="state" HeaderStyle-BackColor="YellowGreen" />
                                   <asp:BoundField DataField="city" HeaderText="city" HeaderStyle-BackColor="YellowGreen" />
                                  <asp:BoundField DataField="Reference" HeaderText="Reference" HeaderStyle-BackColor="YellowGreen" />
                                  <asp:BoundField DataField="refernceNo" HeaderText="refernce No" HeaderStyle-BackColor="YellowGreen" />
                            </Columns>
                        </asp:GridView>

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:Connect %>"
                            SelectCommand="SELECT * FROM [Add_client_tbl]" 
                            DeleteCommand="DELETE FROM [Add_client_tbl] WHERE [Id] = @Id"
                            UpdateCommand="UPDATE [Add_client_tbl] SET  [Name] = @Name,[Middle_Name] = @Middle_Name,
                            [Last_name] = @Name,
                            [Emailid] = @Emailid,
                            [MobileNo] = @MobileNo,
                            [Alternateno] = @Alternateno,
                            [address] = @address,
                            [counrty] = @counrty,
                            [state] = @state,
                            [city] = @city,
                            [Reference] = @Reference,
                             [refernceNo] = @refernceNo
                           
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

