<%@ Page Title="" Language="C#" MasterPageFile="~/BankMaster.master" AutoEventWireup="true" CodeFile="OTPVerification.aspx.cs" Inherits="OTPVarification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 42%;
            height: 164px;
            margin-left: 449px;
        }
        .auto-style2 {
            width: 514px;
        }
        .auto-style3 {
            width: 1146px;
        }
        .auto-style4 {
            width: 514px;
            height: 24px;
        }
        .auto-style5 {
            width: 1146px;
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="text-align:center">
        <h1>Enter One-Time Password </h1>
        <h2>(sent to your email)</h2>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="font-size:xx-large">Enter OTP</td>
                <td class="auto-style3">
                    <asp:TextBox ID="tbOtp" runat="server" Font-Size="XX-Large" Height="39px" Width="307px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="btnSubmit" runat="server" Height="50px" Font-Size="XX-Large" Text="Submit" Width="193px" OnClick="btnSubmit_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

