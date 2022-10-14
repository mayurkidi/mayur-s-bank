<%@ Page Title="" Language="C#" MasterPageFile="~/BankMaster.master" AutoEventWireup="true" CodeFile="Addpayee.aspx.cs" Inherits="Addpayee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 68%;
            height: 179px;
            margin-left: 181px;
            margin-bottom: 0px;
        }
        .auto-style2 {
            width: 636px;
        }
        .auto-style3 {
            width: 417px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align:center"> Add new Payee</h1>
    <table class="auto-style1" style="text-align:center">
        <tr>
            <td class="auto-style2">Account Holders Name</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="262px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Account Number</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server" Height="34px" Width="262px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Account IFSC Code</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox3" runat="server" Height="34px" Width="262px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" Font-Size="X-Large" Text="Add Payee" Width="213px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

