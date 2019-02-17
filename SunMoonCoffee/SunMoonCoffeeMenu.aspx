<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SunMoonCoffeeMenu.aspx.cs" Inherits="SunMoonCoffee.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="border: thin double #000000; background-position: center; background-image: url('depositphotos_3384214-stock-photo-moon-and-stars-from-coffee.jpg'); background-repeat: no-repeat; background-attachment: scroll">
    
        <asp:Label ID="Label1" runat="server" style="font-size: xx-large; text-align: center" Text="Sun &amp; Moon Coffee Shop Menu" BackColor="#996600" BorderColor="Black" BorderStyle="Solid" Width="1253px"></asp:Label>
        <br />
        <br />
        <strong><span class="auto-style1" style="background-color: #996600">Coffee Items</span><br class="auto-style1" />
        </strong>
        <br />
        <br />
        <asp:DropDownList ID="CoffeeSizeDropDownList" runat="server" AutoPostBack="True">
            <asp:ListItem Value="Small"></asp:ListItem>
            <asp:ListItem Value="Medium"></asp:ListItem>
            <asp:ListItem Value="Large"></asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="CoffeeTypeDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged = "coffeeType_OnSelectedIndexChanged">
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="addCoffeeToOrderBtn" runat="server" Text="Add to Order" />
        <br />
        <br />
        <asp:Label ID="coffeeDescription" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" style="font-weight: 700; font-size: large" Text="Food Items" BackColor="#996600"></asp:Label>
        <br />
        <br />
        <br />
        <asp:DropDownList ID="FoodTypeDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged = "foodType_OnSelectedIndexChanged">
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="addFoodToOrderBtn" runat="server" Text="Add to Order" />
        <br />
        <br />
        <asp:Label ID="foodDescription" runat="server"></asp:Label>
        <br />
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProductCatalogConnectionString %>" SelectCommand="SELECT [Id], [Product], [Description], [Calories], [Ratings], [Price] FROM [Products]"></asp:SqlDataSource>
    </form>
</body>
</html>
