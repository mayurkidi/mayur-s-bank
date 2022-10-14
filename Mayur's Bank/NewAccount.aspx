<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewAccount.aspx.cs" Inherits="NewAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 67%;
            height: 127px;
        }

        .auto-style2 {
            width: 501px;
        }

        .auto-style3 {
            height: 198px;
            margin-left: 228px;
        }
        .auto-style5 {
            margin-left: 24px;
        }
        .auto-style6 {
            margin-left: 0px;
        }
    </style>
</head>
<body style="background-color:lightblue">
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align: center">You don't have bank account please create here.
            </h1>
        </div>
        <div style="text-align: center" class="auto-style3">

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2 " style="font-size: x-large">Select Account type</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style6" Height="50px" Width="321px">
                            <asp:ListItem>Saving Account</asp:ListItem>
                            <asp:ListItem>Current Account</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="font-size: x-large">Enter intial amount </td>
                    <td>
                        <asp:TextBox ID="tbAmount" runat="server" Font-Size="X-Large" Height="32px"  Width="340px" CssClass="auto-style5"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
        </div>
        <div style="text-align:center">
            <asp:Button ID="Button1" runat="server" Font-Size="X-Large" Text="Create Account" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
