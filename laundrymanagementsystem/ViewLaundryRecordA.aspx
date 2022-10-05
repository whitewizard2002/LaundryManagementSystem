<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewLaundryRecordA.aspx.cs" Inherits="laundrymanagementsystem.ViewLaundryRecordA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Pending Records"></asp:Label>
            <br />
            <asp:GridView ID="GVPendRecord" runat="server" AutoGenerateColumns="false" OnRowCommand="GVPendRecord_RowCommand">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name"/>
                    <asp:BoundField DataField="NoOfItem" HeaderText="No. of Items"/>
                    <asp:BoundField DataField="Weight" HeaderText="Weight"/>
                    <asp:BoundField DataField="Price" HeaderText="Price"/>
                    <asp:BoundField DataField="DateOfCompletion" HeaderText="Date Of Completion"/>
                    <asp:ButtonField CommandName="Select" Text="Complete" ButtonType="Button" />
                </Columns>

            </asp:GridView>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Completed Records"></asp:Label>
            <br />
            <asp:GridView ID="GVCompRecord" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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
            <br />
            <asp:Label ID="Label3" runat="server" Text="Paid Records"></asp:Label>
            <br />
            <asp:GridView ID="GVPaidRecord" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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
        </div>
    </form>
</body>
</html>
