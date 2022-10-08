<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewUsers.aspx.cs" Inherits="laundrymanagementsystem.ViewUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

    <style>

        body,#form1{
            height:100vh;
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

        #Label1{
            margin-top:5vh;
            font-size:20px;
        }

        #usersGV{
            width:80%;
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
                    </tr>
                </table>
            </div>
        </nav>

        <div>
            <center><asp:Label ID="Label1" runat="server" Text="Users List"></asp:Label></center>
            <br />
            <br />
            <center>
            <asp:GridView ID="usersGV" class="table table-striped" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            </center>
        </div>
    </form>
</body>
</html>
