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
    <div style="border: thin double #000000; background-position: right top; background-image: url('sun-moon-tonic.jpg'); background-repeat: repeat-y; background-attachment: fixed; background-color: #336699;">
    
        <br />
    
        <asp:Label ID="Label1" runat="server" style="font-size: xx-large; text-align: center; margin-left: 13px;" Text="Sun &amp; Moon Coffee Shop Menu" BackColor="#996600" BorderColor="Black" BorderStyle="Solid" Width="1278px"></asp:Label>
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" Height="165px" ImageUrl="~/Food_Beverages_Hot_drink_mug-512.png" Width="189px" />
        <br />
        <strong><span class="auto-style1" style="border: thin none #000000; background-color: #996600; background-image: url('sun-moon-tonic.jpg'); background-repeat: repeat-y; background-attachment: fixed;">
        <br />
        </span><br class="auto-style1" />
        </strong>
        <asp:Label ID="Label3" runat="server" BorderColor="Black" BorderStyle="None" Font-Bold="True" Text="  COFFEE ITEMS"></asp:Label>
        <br />
        <br />
        <asp:DropDownList ID="CoffeeSizeDropDownList" runat="server" AutoPostBack="True" BackColor="#996600">
            <asp:ListItem Value="Small"></asp:ListItem>
            <asp:ListItem Value="Medium"></asp:ListItem>
            <asp:ListItem Value="Large"></asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="CoffeeTypeDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged = "coffeeType_OnSelectedIndexChanged" BackColor="#996600">
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="addCoffeeToOrderBtn" runat="server" Text="Add to Order" onclick="addCoffeeToOrderBtn_onClick" />
        <br />
        <br />
        <asp:Label ID="coffeeDescription" runat="server"></asp:Label>
        <br />
        <asp:Image ID="Image2" runat="server" Height="128px" ImageUrl="~/food-outline-filled.png" Width="190px" />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" style="font-weight: 700; font-size: large; margin-left: 0px; margin-bottom: 1px;" Text="Food Items" BorderColor="Black" BorderStyle="None" Width="196px"></asp:Label>
        <br />
        <br />
        <br />
        <asp:DropDownList ID="FoodTypeDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged = "foodType_OnSelectedIndexChanged" BackColor="#996600">
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
        <asp:GridView ID="orderList" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="398px">
        </asp:GridView>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProductCatalogConnectionString %>" SelectCommand="SELECT [Id], [Product], [Description], [Calories], [Ratings], [Price] FROM [Products]"></asp:SqlDataSource>
    </form>
</body>
</html>
