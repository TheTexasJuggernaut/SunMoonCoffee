<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditOrderPage.aspx.cs" Inherits="SunMoonCoffee.EditOrderPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="background: #336699 url('Pic Repo/sun-moon-tonic.jpg') repeat-y fixed right center; height: 1051px; width: 1305px;">
        <div style="background-color: #CC9900; border-style: solid; border-color: #000000">
            <p id="OrderPage" style="margin: auto; background-color: #996600; width: 1296px; height: 40px; font-size: 35px; font-weight: normal; font-style: normal;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; EDIT ORDER PAGE</p>
        </div>
        <asp:Panel ID="LookupOrderPanel" runat="server" Height="104px">
            <br />
            <asp:Label ID="CustomerNameLabel" runat="server" Text="Customer Name:"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="CustomerNameTextBox" runat="server" Height="21px" Width="165px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="OrderIdPromptLabel" runat="server" Text="Order ID: "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="OrderIdTextBox" runat="server" Height="20px" Width="119px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="LookupOrderBtn" runat="server" OnClick="LookupOrderBtn_Click" Text="Lookup Order" />
        </asp:Panel>
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Pic Repo/icon--purchase-order.png" style="margin-left: 63px" Width="255px" />
        <asp:Panel ID="OrderSummaryPanel" runat="server" Height="381px" Visible="False">
            <asp:Label ID="CustomerLabel" runat="server" Text="Customer Name: "></asp:Label>
            <br />
            <br />
            <asp:Label ID="OrderIdLabel" runat="server" Text="Order Id: "></asp:Label>
            <br />
            <br />
            <asp:Label ID="TotalLabel" runat="server" Text="Total: "></asp:Label>
            <br />
            <br />
            <em>**Select items to remove from your order**<br /> </em>
            <br />     
            <asp:GridView ID="orderSummaryView" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="OrderSummaryDetails" OnSelectedIndexChanged="orderSummaryView_SelectedIndexChanged" DataKeyNames="Id">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                </Columns>
            </asp:GridView>

            <br />
            <asp:Button ID="AddToOrderBtn" runat="server" Text="Add to Order" OnClick="AddToOrderBtn_Click" />
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <br />
        <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
            <asp:SqlDataSource ID="OrderSummaryDetails" runat="server" ConnectionString="<%$ ConnectionStrings:ProductCatalogConnectionString %>" SelectCommand="SELECT [Id], [ProductName], [Price] FROM [OrderItems] WHERE ([OrderID] = @OrderID)">
                <SelectParameters>
                    <asp:SessionParameter Name="OrderID" SessionField="EditOrderId" Type="Int32" />
                </SelectParameters>
        </asp:SqlDataSource>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
