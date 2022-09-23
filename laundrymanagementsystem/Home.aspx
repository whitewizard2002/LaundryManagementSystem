<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="laundrymanagementsystem.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 283px;
        }
        .auto-style4 {
            width: 283px;
            height: 86px;
        }
        .auto-style5 {
            height: 86px;
        }
        .auto-style6 {
            width: 182px;
            height: 86px;
        }
        .auto-style7 {
            width: 182px;
        }
        .auto-style8 {
            height: 27px;
        }
        .auto-style9 {
            width: 283px;
            height: 33px;
        }
        .auto-style10 {
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="3" class="auto-style8">
                    <asp:Label ID="LoginForm" runat="server" Text="LOGIN FORM"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Email Address"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="uEmail" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="uEmail" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Email is Required</asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="incorrectEmailRE" runat="server" ControlToValidate="uEmail" ErrorMessage="Incorrect Email Pattern" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="uPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="uPassword" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Password is Required</asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    </td>
                <td colspan="2" class="auto-style10">
                    <asp:Button ID="loginSubmitBtn" runat="server" OnClick="loginSubmitBtn_Click" Text="Login" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    New to this Website?<asp:HyperLink ID="regLink" runat="server" ForeColor="Blue" NavigateUrl="~/Register.aspx">Register Here</asp:HyperLink>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
