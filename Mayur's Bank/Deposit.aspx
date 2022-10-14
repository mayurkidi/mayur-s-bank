<%@ Page Title="" Language="C#" MasterPageFile="~/BankMaster.master" AutoEventWireup="true" CodeFile="Deposit.aspx.cs" Inherits="Deposit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 857px;
        height: 160px;
        margin-left: 118px;
    }
    .auto-style2 {
        width: 373px;
    }
    .auto-style3 {
        height: 41px;
    }
    .auto-style4 {
        width: 373px;
        height: 49px;
    }
    .auto-style5 {
        height: 49px;
        width: 267px;
    }
    .auto-style6 {
        width: 267px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="text-align: center">
        <h1>Deposit Money</h1>
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">Select Account</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style3" DataSourceID="SqlDataSource1" DataTextField="AccountNumber_" DataValueField="AccountNumber_" Height="43px" Width="414px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [AccountNumber ] AS AccountNumber_ FROM [AccountDetails] WHERE ([AccountUserId] = @AccountUserId)">
                        <SelectParameters>
                            <asp:SessionParameter Name="AccountUserId" SessionField="id" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Enter Amount</td>
                <td class="auto-style4">
                    <asp:TextBox ID="tbAmount" runat="server" Height="29px" Width="395px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style2">
                    <asp:Button ID="btnWithdraw" Font-Size="X-Large" runat="server" Height="45px" Text="Deposit Money" Width="287px" OnClick="btnWithdraw_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

