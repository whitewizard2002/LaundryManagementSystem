<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="laundrymanagementsystem.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            background: rgb(0,0,0);
            background: linear-gradient(0deg, rgba(0,0,0,1) 0%, rgba(93,93,93,1) 100%);
            background-repeat: no-repeat;
            background-attachment: fixed;
            font-family: "Arial Black", Gadget, sans-serif;
        }

        #form1 {
            width:fit-content;
            background-color:white;
            margin-top:25vh;
            max-width:600px;
            border-radius:5px;
        }

        .auto-style1 {
            width: fit-content;
            
        }

        #Submit_Login {
            margin-left: 150px;
        }

        .auto-style2 {
            height: 29px;
        }

        .auto-style3 {
            height: 29px;
            width: 435px;
        }

        .auto-style4 {
            width: 435px;
        }
        .auto-style5 {
            width: 435px;
            height: 88px;
        }
        .auto-style6 {
            height: 88px;
        }
        .auto-style7 {
            width: 435px;
            height: 32px;
        }
        .auto-style8 {
            height: 32px;
        }
        .auto-style9 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <center>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">

            <tr>
                <td class="auto-style4"><center>REGISTER</center></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="rUName" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style9"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="Red">This field is Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="rUemail" runat="server" Text="Email Address"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    &nbsp;<asp:Label ID="emailExistLabel" runat="server" ForeColor="Red"></asp:Label>
                            <asp:RegularExpressionValidator ID="emailREV" runat="server" ControlToValidate="TextBox2" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Wrong Email pattern</asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" ForeColor="Red">This field is Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="rUpassword" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" ForeColor="Red">This field is Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="rUCPassword" runat="server" Text="Confirm Password"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="cPasswordin" runat="server" Height="25px" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="passwordcPasswordCV" runat="server" ControlToCompare="TextBox3" ControlToValidate="cPasswordin" ErrorMessage="CompareValidator" ForeColor="Red">Confirm Password and Password is Not Same</asp:CompareValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="cPasswordin" ErrorMessage="RequiredFieldValidator" ForeColor="Red">This field is Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="rUphone" runat="server" Text="Phone no."></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator" ForeColor="Red">This field is Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="rUaddress" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator" ForeColor="Red">This field is Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="GenderLbl" runat="server" Text="Gender"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="GenderRBL" runat="server" RepeatDirection="Horizontal" Height="47px" Width="188px">
                        <asp:ListItem Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="FM">Female</asp:ListItem>
                        <asp:ListItem Value="O">Other</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="GenderRBL" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Choose a Gender</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Already have an account?<br />
                    <asp:HyperLink ID="loginHyperLink" runat="server" ForeColor="Blue" NavigateUrl="~/Home.aspx">Login Here</asp:HyperLink>
                </td>
                <td>
                    <asp:Button ID="registerBtn" runat="server" Text="Register" Width="74px" OnClick="registerBtn_Click" />
                </td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>
