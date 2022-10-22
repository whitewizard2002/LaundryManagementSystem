<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateLaundryRecord.aspx.cs" Inherits="laundrymanagementsystem.CreateLaundryRecord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <style type="text/css">
        body,#form1{
            height:100vh;
        }

        body{
           background: rgb(0,0,0);
           background: linear-gradient(0deg, rgba(0,0,0,1) 0%, rgba(93,93,93,1) 100%);
           background-repeat:no-repeat;
           background-attachment:fixed;

        }

        .pageHeader{
            color:white;
            font-size:30px;
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
        }
        .auto-style2 {
            width: 210px;
        }
        .auto-style3 {
            width: 210px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 210px;
            height: 55px;
        }
        .auto-style6 {
            height: 55px;
        }
        .auto-style7 {
            width: 169px;
        }
        .auto-style8 {
            width: 169px;
            height: 26px;
        }
        .auto-style9 {
            width: 210px;
            height: 29px;
        }
        .auto-style10 {
            width: 169px;
            height: 29px;
        }
        .auto-style11 {
            height: 29px;
        }

        #crtReqBtn{
            background-color:black;
            color:white;
            border:none;
            border-radius:3px;
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
                                User Panel
                            </div>
                        </td>
                        <td>
                            <asp:Button ID="logOutBtn" runat="server" OnClick="logOutBtn_Click" Text="Log Out" CausesValidation="False" />
                        </td>
                    </tr>
                </table>
            </div>
        </nav>

        <div>
            <center>
            <br />
            <table class="auto-style1">
                <tr>
                    <td colspan="3">
                        <center><asp:Label ID="Label1" runat="server" Text="Create A new Laundry Request"></asp:Label></center>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="No Of Items"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="lrNoOfItems" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="lrNoOfItems" ErrorMessage="RequiredFieldValidator" ForeColor="Red">This field is Required</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Text="Weight"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="lrWeight" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lrWeight" ErrorMessage="RequiredFieldValidator" ForeColor="Red">This field is Required</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label4" runat="server" Text="Date Of Completion"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="lrDate" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="lrDate" ErrorMessage="RequiredFieldValidator" ForeColor="Red">This field is Required</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style6" colspan="2">
                        <br />
                        <asp:Button ID="crtReqBtn" runat="server" Text="Create Request" Width="167px" OnClick="crtReqBtn_Click" />
                        <br />
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="Laundry Record Added"></asp:Label>
                        <br />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Go Back" />
                    </td>
                </tr>
            </table>
            </center>
        </div>
    </form>
</body>
</html>
