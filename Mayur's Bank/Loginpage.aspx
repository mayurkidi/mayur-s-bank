<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Loginpage.aspx.cs" Theme="SkinFile" Inherits="Loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        .auto-style2 {
            width: 372px;
        }
        .auto-style3 {
            margin-left: 316px;
        }
    </style>
</head>
<body style="background-color:lightblue">
    <form id="form1" runat="server">
        <div style="text-align:center">
        <h1 style="text-align:center"> Mayur's Bank Login</h1>
            <hr />
        <table class="auto-style3">
            <tr>
                <td class="auto-style2 " style="font-size:x-large">Username</td>
                <td>
                    <asp:TextBox ID="tbUsername" runat="server" Height="36px" Width="429px">mkidi716@rku.ac.in</asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style2" style="font-size:x-large"" >Passsword</td>
                <td>
                    <asp:TextBox ID="tbPassword" runat="server" Height="36px" Width="429px">Mayur@2008</asp:TextBox>
                </td>
            </tr>
            </table>
        </div>
        <br />
        <div style="text-align:center">
        <asp:Button  ID="btnLogin" runat="server" Height="49px" Text="Login" BackColor="#006600" ForeColor="Black" Font-Size="XX-Large" Width="166px" OnClick="btnLogin_Click" />
            </div>
            <div style="text-align:center">
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/RegistrationPage.aspx">Dont' have an account create here</asp:HyperLink>
            </div>
    </form>
</body>
</html>
