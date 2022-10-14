<%@ Page Title="" Language="C#" MasterPageFile="~/BankMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 366px;
            margin-top: 14px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <h1 style="text-align: center">Transactions</h1>
    <div style="text-align: center">
        <asp:GridView ID="GridView1" runat="server" CssClass="auto-style1" Height="126px" Width="529px" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                <asp:BoundField DataField="TransactionType" HeaderText="TransactionType" SortExpression="TransactionType" />
                <asp:BoundField DataField="TransactionDate" HeaderText="TransactionDate" SortExpression="TransactionDate" />
            </Columns>
        </asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [Amount], [TransactionType], [TransactionDate] FROM [Transactions] WHERE ([Accountid] = @Accountid)">
        <SelectParameters>
            <asp:SessionParameter Name="Accountid" SessionField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Amount], [TransactionType], [TransactionDate] FROM [Transactions] WHERE ([Accountid] = @Accountid)">
        <SelectParameters>
            <asp:SessionParameter Name="Accountid" SessionField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


