<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegistrationPage.aspx.cs" Inherits="RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 263px;
        }

        .auto-style4 {
            width: 263px;
            height: 60px;
        }

        .auto-style8 {
            width: 427px;
        }

        .auto-style9 {
            height: 60px;
            width: 427px;
        }

        .auto-style10 {
            width: 493px;
        }

        .auto-style11 {
            height: 60px;
            width: 493px;
        }
        .auto-style12 {
            width: 1131px;
            height: 408px;
            margin-left: 122px;
        }
    </style>
</head>
<body style="margin-left: 194px; background-color:lightblue ">
    <form id="form1" runat="server">

        <div style="text-align: center">
            <h1>Mayur's Bank Registration
            </h1>
            <hr />
            <br />
            <table class="auto-style12" style="align-content: center">
                <tr>
                    <td class="auto-style2" style="font-size: x-large">Firstname</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="tbFirstname" runat="server" Height="42px" Width="335px" Font-Size="X-Large"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbFirstname" ErrorMessage="Firstname cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="font-size: x-large">Lastname</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="tbLastname" runat="server" Height="42px" Width="335px" Font-Size="X-Large"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbLastname" ErrorMessage="Lastname cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="font-size: x-large">Gender</td>
                    <td class="auto-style10">
                        <asp:RadioButtonList ID="rbGender" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style8">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="rbGender" ErrorMessage="Select gender" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="font-size: x-large">Email</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="tbEmail" runat="server" Height="42px" Width="335px" Font-Size="X-Large"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbEmail" ErrorMessage="Email cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="font-size: x-large">Address</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="tbAddress" runat="server" Height="42px" TextMode="MultiLine" Width="335px" Font-Size="X-Large"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbAddress" ErrorMessage="Address cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="font-size: x-large">Mobile</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="tbMobile" runat="server" Height="42px" Width="335px" Font-Size="X-Large"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tbMobile" ErrorMessage="Mobile cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="font-size: x-large">Password</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="tbPassword" runat="server" Height="42px" Width="335px" Font-Size="X-Large"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbPassword" ErrorMessage="Password must contain number and speical character" ForeColor="Red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&amp;])[A-Za-z\d@$!%*#?&amp;]{8,}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="font-size: x-large">Confirm Password</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="tbCPassword" runat="server" Height="42px" Width="335px" Font-Size="X-Large"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbPassword" ControlToValidate="tbCPassword" ErrorMessage="Both passwords are not same" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Button ID="btnRegister" runat="server" Text="Register"  Font-Size="XX-Large" BackColor="#006600" OnClick="btnRegister_Click"/>
        </div>
    </form>
</body>
</html>
