<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDashboard.aspx.cs" Inherits="laundrymanagementsystem.UserDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

    <style>

        body{
            height:100vh;
        }

        #form1{
            height:100vh;
        }

        .pageHeader{
            color:white;
            font-size:20px;
            margin-right:1100px;
        }

        #logOutBtn{
            color:white;
            background-color:red;
            border:none;
            margin-right:100px;
            border-radius:3px;
        }

        #dPrfBtn{
            border:none;
            border-radius:3px;
            background-color:red;
            color:white;
        }

        .cardTable{
            margin-top:25vh;
            width:80%;
        }

        .card1{
            border-left:3px solid yellow;
        }

        #cPBtn{
            color:black;
            background-color:yellow;
            border:none;
            border-radius:3px;
        }

        .card2{
            border-left:3px solid blue;
        }

        #cLRBtn{
            color:white;
            background-color:blue;
            border:none;
            border-radius:3px;
        }

        .card3{
            border-left:3px solid green;
        }

        #vLRBtn{
            color:white;
            background-color:green;
            border:none;
            border-radius:3px;
        }


        .card1,.card2,.card3{
            margin:10px 10px 10px 10px;
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
                                User Panel
                            </div>
                        </td>
                        <td>
                            <asp:Button ID="logOutBtn" runat="server" OnClick="logOutBtn_Click" Text="Log Out" />
                        </td>

                        <td>
                            <asp:Button ID="dPrfBtn" runat="server" OnClick="dPrfBtn_Click" Text="Delete Profile"/>
                        </td>
                    </tr>
                </table>
            </div>
        </nav>

        <div>
            <center>
            <table class="cardTable">
                <tr>
                    <td>
                        <div class="card card1">
                            <div class="card-header">
                                Profile
                            </div>
                            <div class="card-body">
                                Name:<asp:Label ID="uName" runat="server"></asp:Label>
                                <br/>
                                Email:<asp:Label ID="uEmail" runat="server"></asp:Label>
                                <br/>
                                Phone Number:<asp:Label ID="uPhone" runat="server"></asp:Label>
                                <br />
                                Gender:<asp:Label ID="uGender" runat="server"></asp:Label>
                                <br />
                            </div>
                            <div class="card-footer">
                                <asp:Button ID="cPBtn" runat="server" Text="Change" Width="147px" OnClick="cPBtn_Click" />
                            </div>
                        </div>
                    </td>

                    <td>
                        <div class="card card2">
                            <div class="card-header">
                                Requests
                            </div>
                            <div class="card-body">
                                No of Requests Made:<asp:Label ID="cReqCount" runat="server"></asp:Label>
                                <br/>
                            </div>
                            <div class="card-footer">
                                <asp:Button ID="cLRBtn" runat="server" OnClick="cLRBtn_Click" Text="Create Request" Width="193px" />
                            </div>
                        </div>
                    </td>

                    <td>
                        <div class="card card3">
                            <div class="card-header">
                                Your Laundry Records
                            </div>
                            <div class="card-body">
                                NO. of Pending Records:<asp:Label ID="pRecCount" runat="server"></asp:Label>
                                <br />
                                NO. of Paid Records:<asp:Label ID="paidRecCount" runat="server"></asp:Label>
                                <br />
                            </div>
                            <div class="card-footer">
                                <asp:Button ID="vLRBtn" runat="server" Text="View" Width="193px" OnClick="vLRBtn_Click" />
                            </div>
                        </div>
                    </td>
                </tr>
            </table>
            </center>
        </div>
    </form>
</body>
</html>
