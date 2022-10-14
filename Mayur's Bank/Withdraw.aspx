<%@ Page Title="" Language="C#" MasterPageFile="~/BankMaster.master" AutoEventWireup="true" CodeFile="Withdraw.aspx.cs" Inherits="Withdraw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 56%;
            margin-left: 259px;
        }

        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style8 {
            width: 414px;
            height: 49px;
        }
        .auto-style10 {
            width: 414px;
            height: 45px;
        }
        .auto-style11 {
            width: 214px;
            height: 49px;
        }
        .auto-style13 {
            width: 214px;
            height: 45px;
        }
        .auto-style14 {
            width: 214px;
            height: 47px;
        }
        .auto-style15 {
            width: 414px;
            height: 47px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="text-align: center">
        <h1> Withdraw Money</h1>
        <table class="auto-style1">
            <tr>
                <td class="auto-style11">Select Account</td>
                <td class="auto-style8">
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
                <td class="auto-style14">Enter Amount</td>
                <td class="auto-style15">
                    <asp:TextBox ID="tbAmount" runat="server" Height="29px" Width="395px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style10">
                    <asp:Button ID="btnWithdraw" Font-Size="X-Large" runat="server" Height="36px" Text="Withdraw Money" Width="287px" OnClick="btnWithdraw_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

