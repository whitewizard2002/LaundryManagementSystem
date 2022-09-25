<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangeProfileA.aspx.cs" Inherits="laundrymanagementsystem.ChangeProfileA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 179px;
        }
        .auto-style3 {
            width: 179px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 179px;
            height: 34px;
        }
        .auto-style6 {
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4" colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Change Profile"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="New Email Address"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="nEmail" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nEmail" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Email is Required</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="nEmail" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email Pattern in not Correct</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="New Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="nPassword" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="nPassword" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Password is Required</asp:RequiredFieldValidator>
&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="nCPassword" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="nCPassword" ErrorMessage="RequiredFieldValidator" ForeColor="Red">This field is Required</asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="nPassword" ControlToValidate="nCPassword" ErrorMessage="CompareValidator" ForeColor="Red">Password and Confirm Password are not same</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="cPABtn" runat="server" OnClick="Button1_Click" Text="Update Profile" Width="166px" />
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
