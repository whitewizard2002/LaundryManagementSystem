<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangeProfileU.aspx.cs" Inherits="laundrymanagementsystem.ChangeProfileU" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <style type="text/css">

        body{
            height:100vh;
            background: rgb(0,0,0);
            background: linear-gradient(0deg, rgba(0,0,0,1) 0%, rgba(93,93,93,1) 100%);
        }

        #form1{
            height:100vh;
        }

        .pageHeader{
            color:white;
            font-size:30px;
            margin-right:1200px;
        }

        #logOut{
            color:white;
            background-color:red;
            border:none;
            border-radius:3px;

        }

        .auto-style1 {
            width: 45%;
            background-color:white;
            margin-top:15vh;
            border-radius:3px;
            border:none;
        }
        .auto-style2 {
            width: 177px;
        }
        .auto-style3 {
            width: 177px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 177px;
            height: 29px;
        }
        .auto-style6 {
            height: 29px;
        }

        #UpdateBtn{
            color:white;
            border:none;
            border-radius:3px;
            background-color:black;
        }
        .auto-style7 {
            left: -5px;
            top: -2px;
            background-color:black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="auto-style7">
            <div class="container-fluid">
                <table class="navTable">
                    <tr>
                        <td>
                            <div class="pageHeader">
                                User Panel
                            </div>
                        </td>
                        <td>
                            
                            <asp:Button ID="logOut" runat="server" OnClick="logOut_Click" Text="Log Out" CausesValidation="False" />
                            
                        </td>
                    </tr>
                </table>
            </div>
        </nav>

        <div>
            <center>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4" colspan="2">
                        <center><asp:Label ID="Label1" runat="server" Text="Change Profile"></asp:Label></center>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="nName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nName" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Name is Required</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="nGenderList" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="M">Male</asp:ListItem>
                            <asp:ListItem Value="FM">Female</asp:ListItem>
                            <asp:ListItem Value="O">Other</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="nGenderList" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Gender selection is Required</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="nEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="nEmail" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Email is Required</asp:RequiredFieldValidator>
&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="nEmail" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Wrong Email Pattern</asp:RegularExpressionValidator>
                    &nbsp;
                        <asp:Label ID="emailExists" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label5" runat="server" Text="New Password"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="nPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="nPassword" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Password is Required</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="nCPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="nCPassword" ErrorMessage="RequiredFieldValidator" ForeColor="Red">You need to confirm your password</asp:RequiredFieldValidator>
&nbsp;
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="nPassword" ControlToValidate="nCPassword" ErrorMessage="CompareValidator" ForeColor="Red">Given password and Confirm Password are not same</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="Phone No"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="nPhoneNo" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="nPhoneNo" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Phone No is Required</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label8" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="nAddress" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="nAddress" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Address is Required</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="UpdateBtn" runat="server" OnClick="Button1_Click" Text="Update Profile" Width="166px" />
                    </td>
                </tr>
            </table>
            </center>
        </div>
    </form>
</body>
</html>
