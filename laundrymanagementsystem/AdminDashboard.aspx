<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="laundrymanagementsystem.AdminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <style>
        body{
            height:100vh;
        }

        .pageHeader{
            font-size:30px;
            color:white;
            margin-right:1200px;
        }

        #form1{
            height:100vh;
        }

        #Button1{
            color:white;
            background-color:blue;
            border-radius:2px;
            border:none;
        }

        #Button2{
            color:black;
            background-color:yellow;
            border-radius:2px;
            border:none;
        }

        #Button3{
            color:white;
            background-color:red;
            border-radius:2px;
            border:none;
        }
        #Button4{
            color:white;
            background-color:green;
            border-radius:2px;
            border:none;
        }

        .cardTable{
            margin-top:25vh;
            width:80%;
        }

        .cardRow{
            height:200px
        }

        .card1{
            border-left:3px solid yellow;
        }

        .card2{
            border-left:3px solid blue;
        }

        .card3{
            border-left:3px solid green;
        }

        .card1,.card2,.card3{
            margin:10px 10px 10px 10px;
            /*border-left:3px solid black;*/
            border-radius:3px;
            box-shadow: 0px 0px 42px 0px rgba(189,189,189,0.75);
            -webkit-box-shadow: 0px 0px 42px 0px rgba(189,189,189,0.75);
            -moz-box-shadow: 0px 0px 42px 0px rgba(189,189,189,0.75);
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
                            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Log Out" />
                        </td>
                    </tr>
                </table>
            </div>
        </nav>
        <div class="pageCards">
            <center>
                <table class="cardTable">
                    <tr class="cardRow">
                        <td>
                            <div class="card card1">
                                <div class="card-header">
                                    Change Profile
                                </div>
                                <div class="card-body">
                                    Email Address:
                                    <asp:Label ID="aEmail" runat="server"></asp:Label>
                                </div>
                                <div class="card-footer">
                                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Change Profile" Width="132px" />
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="card card2">
                                <div class="card-header">
                                    Laundry Records
                                </div>
                                <div class="card-body">
                                    Pending Records:<asp:Label ID="pendRecordL" runat="server"></asp:Label>
                                    <br />
                                    Paid Records:<asp:Label ID="paidRecordL" runat="server"></asp:Label>
                                    <br />
                                    Completed Records:
                                    <asp:Label ID="compRecordL" runat="server"></asp:Label>
                                </div>
                                <div class="card-footer">
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View Laundry Records" Width="179px" />
                                </div>
                            </div>

                        </td>
                        <td>
                            <div class="card card3">
                                <div class="card-header">
                                    View Users
                                </div>
                                <div class="card-body">
                                    No Of Users:
                                    <asp:Label ID="nUsersL" runat="server"></asp:Label>
                                </div>
                                <div class="card-footer">
                                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="View Users" Width="175px" />
                                </div>
                            </div>

                        </td>
                    </tr>
                </table>
            </center>

            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
