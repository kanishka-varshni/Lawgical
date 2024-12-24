<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.master" AutoEventWireup="true" CodeFile="Tax.aspx.cs" Inherits="Tax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="content-wrapper">
        <div class="row">
            <div class="col-sm-8 grid-margin stretch-card">
                <div class="card">
                    <div class="card-header">
                        <div class="row">
                            <h2 class="text-primary col-10">Tax</h2>
                            <div class="float-right">
                                <a href="Model/AddTax.aspx" class="width-50 btn btn-primary"><span class="text-white">+ </span>Add Tax</a>
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
                                
                                <asp:BoundField DataField="name" HeaderText=" Case Name" />
                                 <asp:BoundField DataField="TaxRate" HeaderText=" Case Name" />
                                 <asp:BoundField DataField="Note" HeaderText=" Case Name" />

                              



                            </Columns>
                        </asp:GridView>



                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 

                            ConnectionString="<%$ ConnectionStrings:Connect %>"
                            
                            SelectCommand="SELECT * FROM [Tax_tbl]" 
                            
                            DeleteCommand="DELETE FROM [Tax_tbl] WHERE [Id] = @Id"


                            UpdateCommand="UPDATE [Tax_tbl] SET  [name] = @name,
                            [TaxRate] = @TaxRate,
                            [Note] = @Note
                           
                            WHERE [Id] = @Id">


                            <DeleteParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                            </DeleteParameters>

                            <UpdateParameters>
                                <asp:Parameter Name="name" Type="String" />
                                 <asp:Parameter Name="TaxRate" Type="String" />
                                 <asp:Parameter Name="CasetypNoteename_Name" Type="String" />
                              
                            </UpdateParameters>
                            
                        </asp:SqlDataSource>


                    </div>


                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

