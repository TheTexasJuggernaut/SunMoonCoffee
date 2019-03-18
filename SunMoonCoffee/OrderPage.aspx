<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderPage.aspx.cs" Inherits="SunMoonCoffee.OrderPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="background: #336699 url('Pic Repo/sun-moon-tonic.jpg') repeat-y fixed right center; height: 1051px; width: 1305px;">
        <div style="background-color: #CC9900; border-style: solid; border-color: #000000">
            <p id="OrderPage" style="margin: auto; background-color: #996600; width: 1296px; height: 40px; font-size: 35px; font-weight: normal; font-style: normal;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SUN MOON ORDER PAGE</p>
        </div>
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Pic Repo/icon--purchase-order.png" style="margin-left: 19px" Width="246px" Height="239px" />
        <br />
        <asp:GridView ID="orderSummaryView" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="OrderSummaryDetails">
            <Columns>
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:Label ID="TotalLabel" runat="server" Text="Total: "></asp:Label>
        <br />
        <br />
        <asp:Label ID="nameLabel" runat="server" Text="Name"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="nameTextBox" runat="server" BackColor="#996600"></asp:TextBox>
        <br />
        <br />
          &nbsp;&nbsp;<asp:Button ID="ConfirmOrderBtn" runat="server" OnClick="ConfirmOrderBtn_Click" Text="Confirm Order" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="GoBack" />
        <br />
            <asp:SqlDataSource ID="OrderSummaryDetails" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ProductName], [Price] FROM [OrderItems] WHERE ([OrderID] = @OrderID)">
                <SelectParameters>
                    <asp:SessionParameter Name="OrderID" SessionField="newOrderId" Type="Int32" />
                </SelectParameters>
        </asp:SqlDataSource>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
