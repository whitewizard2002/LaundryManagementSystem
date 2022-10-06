<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangeProfileA.aspx.cs" Inherits="laundrymanagementsystem.ChangeProfileA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <style type="text/css">

        body{
           background: rgb(0,0,0);
           background: linear-gradient(0deg, rgba(0,0,0,1) 0%, rgba(93,93,93,1) 100%);

        }

        body,#form1{
            height:100vh;
        }


        .pageHeader{
            color:white;
            font-size:25px;
            margin-right:1200px;
        }

        #logOutBtn{
            color:white;
            background-color:red;
            border:none;
            border-radius:3px;
        }

        .auto-style1 {
            width: 50%;
            margin-top:20vh;
            background-color:white;
            border-radius:3px;
            border:none;
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
        <nav class="navbar navbar-expand-sm bg-dark">
            <div class="container-fluid">
                <table class="navTable">
                    <tr>
                        <td>
                            <div class="pageHeader">
                                Admin Panel
                            </div>
                        </td>
                        <td>
                            <asp:Button ID="logOutBtn" runat="server" OnClick="logOutBtn_Click" Text="Log Out" CausesValidation="False" />
                        </td>

                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </div>
        </nav>

        <center>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4" colspan="2">
                    <center><asp:Label ID="Label1" runat="server" Text="Change Profile"></asp:Label></center>
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
                    <br />
                    <asp:TextBox ID="nCPassword" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="nCPassword" ErrorMessage="RequiredFieldValidator" ForeColor="Red">This field is Required</asp:RequiredFieldValidator>
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="nPassword" ControlToValidate="nCPassword" ErrorMessage="CompareValidator" ForeColor="Red">Password and Confirm Password are not same</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="cPABtn" runat="server" OnClick="Button1_Click" Text="Update Profile" Width="166px" />
                </td>
            </tr>
        </table>
        </center>
        <div>
        </div>
    </form>
</body>
</html>
