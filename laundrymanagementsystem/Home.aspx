<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="laundrymanagementsystem.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
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
            width: 267px;
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
            margin-top:25vh;
            background-color:white;
            border-radius:5px;
            width:60%;
            max-width:500px;
        }
        .auto-style11 {
            height: 58px;
        }

        #uEmail,#uPassword{
            border-radius:5px;
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
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="uEmail" runat="server" placeholder="Email Address"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="uEmail" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Email is Required</asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="incorrectEmailRE" runat="server" ControlToValidate="uEmail" ErrorMessage="Incorrect Email Pattern" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="uPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
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
                    <center><asp:Button class="btn btn-primary" ID="loginSubmitBtn" runat="server" OnClick="loginSubmitBtn_Click" Text="Login" /></center>
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
