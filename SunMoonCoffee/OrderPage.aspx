<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderPage.aspx.cs" Inherits="SunMoonCoffee.OrderPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            SUN MOON ORDER PAGE</div>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                <ItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    Product:
                    <asp:Label ID="ProductLabel" runat="server" Text='<%# Eval("Product") %>' />
                    <br />
                    Description:
                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                    <br />
                    Calories:
                    <asp:Label ID="CaloriesLabel" runat="server" Text='<%# Eval("Calories") %>' />
                    <br />
                    Ratings:
                    <asp:Label ID="RatingsLabel" runat="server" Text='<%# Eval("Ratings") %>' />
                    <br />
                    Price:
                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                    <br />
<br />
                </ItemTemplate>
        </asp:DataList>
          <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Checkout" />
          <br />
          <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="GoBack" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProductCatalogConnectionString %>" SelectCommand="SELECT [Description], [Product], [Calories], [Ratings], [Price], [Id] FROM [Table]"></asp:SqlDataSource>
    </form>
</body>
</html>
