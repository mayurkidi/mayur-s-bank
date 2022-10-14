<%@ Page Title="" Language="C#" MasterPageFile="~/BankMaster.master" AutoEventWireup="true" CodeFile="Transfer.aspx.cs" Inherits="Transfer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 535px;
        }

        .auto-style3 {
            width: 808px;
            margin-left: 136px;
        }

        .auto-style4 {
            margin-left: 0px;
        }

        .auto-style5 {
            margin-left: 17px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1 style="text-align: center">Transfer Money</h1>
    <div style="text-align:left">
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="X-Large" NavigateUrl="Addpayee.aspx">Add New Payee</asp:HyperLink>
    </div>

    <table class="auto-style3" style="text-align: center">
        <tr>
            <td class="auto-style2">Select Payee</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="32px" Width="341px" CssClass="auto-style5" DataSourceID="SqlDataSource1" DataTextField="AccountHolderName" DataValueField="AccountHolderName" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [AccountHolderName] FROM [Payees] WHERE ([UserId] = @UserId)">
                    <SelectParameters>
                        <asp:SessionParameter Name="UserId" SessionField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Account Number</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style4" Width="329px" Height="32px">XXXXXXXX</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Account IFSC Code</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style4" Width="329px" Height="33px">XXXXXXXX</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Enter Amount</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style4" Width="329px" Height="30px"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Font-Size="X-Large" Text="Transfer Money" BackColor="Black" ForeColor="White" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

