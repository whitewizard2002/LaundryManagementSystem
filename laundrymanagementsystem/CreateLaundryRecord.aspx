<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateLaundryRecord.aspx.cs" Inherits="laundrymanagementsystem.CreateLaundryRecord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center><asp:Label ID="Label1" runat="server" Text="Create A new Laundry Request"></asp:Label></center>
            <br />
            <table class="auto-style1">
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
        </div>
    </form>
</body>
</html>
