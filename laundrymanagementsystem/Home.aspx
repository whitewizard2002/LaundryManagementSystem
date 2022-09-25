<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="laundrymanagementsystem.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 80%;
        }
        .auto-style2 {
            width: 267px;
        }
        .auto-style4 {
            width: 267px;
            height: 86px;
        }
        .auto-style5 {
            height: 86px;
            width: 158px;
        }
        .auto-style6 {
            width: 182px;
            height: 86px;
        }
        .auto-style7 {
            width: 182px;
        }
        .auto-style8 {
            align-content:center;
            height: 27px;
        }
        .auto-style9 {
            width: 267px;
            height: 33px;
        }
        .auto-style10 {
            height: 33px;
        }

        body{
           background: rgb(0,0,0);
           background: linear-gradient(0deg, rgba(0,0,0,1) 0%, rgba(93,93,93,1) 100%);
           background-repeat:no-repeat;
           background-attachment:fixed;

           font-family: "Arial Black", Gadget, sans-serif;

        }

        #form1{
            margin-top:25%;
            background-color:white;
            border-radius:5px;
            width:60%;
        }
        .auto-style11 {
            height: 58px;
        }

        #uEmail,#uPassword{
            border-radius:10px;
            border: 1px solid grey;
        }

        #LoginForm{
            color:lightblue;

        }        
        .auto-style12 {
            width: 158px;
        }
        .auto-style13 {
            height: 33px;
            width: 158px;
        }
        .auto-style14 {
            width: 54%;
        }
    </style>
</head>
<body>
    <center>
    <form id="form1" runat="server" class="auto-style14">
        <table class="auto-style1">
            <tr>
                <td colspan="3" class="auto-style8">
                    <center>
                    Laundry Management
                    <br />
                    System</center></td>
            </tr>
            <tr>
                <td colspan="3" class="auto-style11">
                    <center><asp:Label ID="LoginForm" runat="server" Text="LOGIN FORM"></asp:Label></center>
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
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="uPassword" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Password is Required</asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    </td>
                <td class="auto-style10">
                    <asp:Button ID="loginSubmitBtn" runat="server" OnClick="loginSubmitBtn_Click" Text="Login" />
                </td>
                <td class="auto-style13">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    New to this Website?<asp:HyperLink ID="regLink" runat="server" ForeColor="Blue" NavigateUrl="~/Register.aspx">Register Here</asp:HyperLink>
                </td>
            </tr>
        </table>
    </form>
    </center>
</body>
</html>
