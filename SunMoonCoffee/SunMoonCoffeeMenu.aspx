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
    <div style="border: thin double #000000; background-position: center top; background-image: url('depositphotos_3384214-stock-photo-moon-and-stars-from-coffee.jpg'); background-repeat: no-repeat; background-attachment: fixed">
    
        <asp:Label ID="Label1" runat="server" style="font-size: xx-large; text-align: center" Text="Sun &amp; Moon Coffee Shop Menu" BackColor="#996600" BorderColor="Black" BorderStyle="Solid" Width="1727px"></asp:Label>
        <br />
        <asp:Image ID="Image1" runat="server" Height="165px" ImageUrl="~/Food_Beverages_Hot_drink_mug-512.png" Width="182px" />
        <br />
        <strong><span class="auto-style1" style="border: thin none #000000; background-color: #996600">&nbsp;&nbsp;&nbsp; Coffee Items </span><br class="auto-style1" />
        </strong>
        <br />
        <br />
        <asp:DropDownList ID="CoffeeSizeDropDownList" runat="server" AutoPostBack="True">
            <asp:ListItem Value="Small"></asp:ListItem>
            <asp:ListItem Value="Medium"></asp:ListItem>
            <asp:ListItem Value="Large"></asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="CoffeeTypeDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged = "coffeeType_OnSelectedIndexChanged" DataSourceID="SqlDataSource2" DataTextField="Product" DataValueField="Id">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProductCatalogConnectionString %>" SelectCommand="SELECT [Product], [Id] FROM [Products] WHERE ([Type] LIKE '%' + @Type + '%')">
            <SelectParameters>
                <asp:Parameter DefaultValue="C" Name="Type" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="addCoffeeToOrderBtn" runat="server" Text="Add to Order" onclick="addCoffeeToOrderBtn_onClick" />
        <br />
        <br />
        <asp:Label ID="coffeeDescription" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Image ID="Image2" runat="server" Height="158px" ImageUrl="~/Food Icon.png" Width="168px" />
        <br />
        <asp:Label ID="Label2" runat="server" style="font-weight: 700; font-size: large; margin-left: 0px;" Text="  Food Items  " BackColor="#996600" BorderColor="Black" BorderStyle="None" Width="165px"></asp:Label>
        <br />
        <br />
        <br />
        <asp:DropDownList ID="FoodTypeDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged = "foodType_OnSelectedIndexChanged" DataSourceID="FoodDataSource" DataTextField="Product" DataValueField="Product">
        </asp:DropDownList>
        <asp:SqlDataSource ID="FoodDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ProductCatalogConnectionString %>" SelectCommand="SELECT [Product] FROM [Products] WHERE ([Type] LIKE '%' + @Type + '%')">
            <SelectParameters>
                <asp:Parameter DefaultValue="F" Name="Type" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="addFoodToOrderBtn" runat="server" Text="Add to Order" onclick="addFoodToOrderBtn_onClick"/>
        <br />
        <br />
        <asp:Label ID="foodDescription" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <br />
    
        <asp:Label ID="orderSummary" runat="server"></asp:Label>
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </form>
</body>
</html>
