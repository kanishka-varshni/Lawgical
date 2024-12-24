<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.master" AutoEventWireup="true" CodeFile="Expense.aspx.cs" Inherits="Expense" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class="content-wrapper">
        <div class="row">
            <div class="col-sm-8 grid-margin stretch-card">
                <div class="card">
                    <div class="card-header">
                        <div class="row">
                            <h2 class="text-primary col-10">Expense </h2>
                            <div class="float-right">
                                <a href="Model/AddExpense.aspx" class="width-50 btn btn-primary"><span class="text-white">+ </span>Add Expense </a>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <%-- grid here --%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

