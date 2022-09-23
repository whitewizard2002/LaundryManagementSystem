<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="laundrymanagementsystem.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        #Submit_Login {
            margin-left: 150px;
        }
        .auto-style2 {
            height: 29px;
        }
        .auto-style3 {
            height: 29px;
            width: 276px;
        }
        .auto-style4 {
            width: 276px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            REGISTER
        </div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="rUName" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="rUemail" runat="server" Text="Email Address"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:Label ID="emailExistLabel" runat="server" ForeColor="Red"></asp:Label>
&nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="emailREV" runat="server" ControlToValidate="TextBox2" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Wrong Email pattern</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="rUpassword" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="rUCPassword" runat="server" Text="Confirm Password"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="cPasswordin" runat="server" Height="25px" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="passwordcPasswordCV" runat="server" ControlToCompare="TextBox3" ControlToValidate="cPasswordin" ErrorMessage="CompareValidator" ForeColor="Red">Confirm Password and Password is Not Same</asp:CompareValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style4">
                        <asp:Label ID="rUphone" runat="server" Text="Phone no."></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                     </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="rUaddress" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        Already have an account?<br />
                        <asp:HyperLink ID="loginHyperLink" runat="server" ForeColor="Blue" NavigateUrl="~/Home.aspx">Login Here</asp:HyperLink>
                    </td>
                    <td><asp:Button ID="registerBtn" runat="server" Text="Register" Width="74px" OnClick="registerBtn_Click" />
                    </td>
                </tr>
            </table>
    </form>
</body>
</html>