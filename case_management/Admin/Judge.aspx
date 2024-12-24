<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.master" AutoEventWireup="true" CodeFile="Judge.aspx.cs" Inherits="Judge" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="content-wrapper">
        <div class="row">
            <div class="col-sm-8 grid-margin stretch-card">
                <div class="card">
                    <div class="card-header">
                        <div class="row">
                            <h2 class="text-primary col-9">Judge</h2>
                            <div class="float-right">
                                <a href="Model/AddJudge.aspx" class="width-50 btn btn-primary"><span class="text-white">+ </span>Add Judge</a>
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
                                
                                <asp:BoundField DataField="JudgeType" HeaderText=" Case Name" />
                              



                            </Columns>
                        </asp:GridView>



                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 

                            ConnectionString="<%$ ConnectionStrings:Connect %>"
                            
                            SelectCommand="SELECT * FROM [Judetype_tbl]" 
                            
                            DeleteCommand="DELETE FROM [Judetype_tbl] WHERE [Id] = @Id"


                            UpdateCommand="UPDATE [Judetype_tbl] SET  [JudgeType] = @JudgeType
                           
                            WHERE [Id] = @Id">


                            <DeleteParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                            </DeleteParameters>

                            <UpdateParameters>
                                <asp:Parameter Name="JudgeType" Type="String" />
                              
                            </UpdateParameters>
                            
                        </asp:SqlDataSource>


                    </div>


                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

