<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Student.master" AutoEventWireup="true" CodeFile="DownloadFiles.aspx.cs" Inherits="Student_DownloadFiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <h1 >Download Files - Search</h1>

    <div style="width: 780px;">
        <asp:GridView ID="grd_show" runat="server" CssClass="SearchTable" AutoGenerateColumns="true">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkDownload" Text="Download" CommandArgument='<%# Eval("FileName") %>' runat="server" OnClick="DownloadFile"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>

