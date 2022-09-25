<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDashboard.aspx.cs" Inherits="laundrymanagementsystem.UserDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="cLRBtn" runat="server" OnClick="cLRBtn_Click" Text="Create Laundry Request" Width="193px" />
            <br />
            <br />
            <asp:Button ID="vLRBtn" runat="server" Text="View Laundry Records" Width="193px" OnClick="vLRBtn_Click" />
            <br />
            <br />
            <asp:Button ID="cPBtn" runat="server" Text="Change Profile" Width="147px" OnClick="cPBtn_Click" />
        </div>
    </form>
</body>
</html>
