<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Hod.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Hod_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<img src="https://s3-ap-south-1.amazonaws.com/ricedigitals3bucket/AUPortalContent/2021/07/07132922/Untitled-design-53.png" style="width: 100%;height: 100%;"/>
    
   <%-- <div style="width: 780px;">
        <asp:GridView ID="grdView" runat="server" CssClass="SearchTable" AutoGenerateColumns="false" OnRowCommand="grdView_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="S.No" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="75px">
                    <ItemTemplate>
                        <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="staff_name" HeaderText="Name" />
                <asp:BoundField DataField="CreateDate" HeaderText="Request Given on" />
                <asp:BoundField DataField="Status" HeaderText="Status" NullDisplayText="--" />
                <asp:BoundField DataField="Leave_Req_Date" HeaderText="Req.Date" />
                <asp:BoundField DataField="leave_available" HeaderText="Leave Ava." />
                <asp:BoundField DataField="no_of_days" HeaderText="leave Req." />


                <asp:TemplateField HeaderText="Action" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:ImageButton ID="imgbtnView" ImageUrl="~/images/Print.png" CommandArgument='<%#Eval("id")+ ";" + Eval("User_id")%>' CommandName="View" runat="server" />
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>--%>

</asp:Content>

