<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Staff.master" AutoEventWireup="true" CodeFile="UploadFiles.aspx.cs" Inherits="Staff_UploadFiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content1"></div>
    <div class="login-block form text-white">
        <h1  class="text-white">File Upload</h1>
        <table>
            <tr>
                <td colspan="2">
                    <asp:Label Text="" ID="lblMessage" runat="server" />
                </td>
            </tr>
            <tr>
                <td>File Name
                </td>
                <td>
                    <asp:TextBox runat="server" ID="txtFileName" />
                </td>
            </tr>

            <tr>
                <td>File Description
                </td>
                <td>
                    <asp:TextBox runat="server" ID="txtDescription" />
                </td>
            </tr>

            <tr>
                <td>    Department</td>
                <br />
                <td class="text-dark">
                    <asp:DropDownList runat="server" ID="ddlDepartment">
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>Upload File
                </td>
                <td>
                    <asp:FileUpload runat="server" ID="fulStaff" AllowMultiple="true" />

                </td>
            </tr>

            <tr>
                <td>
                    <asp:Button CssClass="button mt-3" Text="Save" ID="btnSave" runat="server" OnClick="btnSave_Click" /></td>
                <td></td>

            </tr>

        </table>
    </div>
</asp:Content>

