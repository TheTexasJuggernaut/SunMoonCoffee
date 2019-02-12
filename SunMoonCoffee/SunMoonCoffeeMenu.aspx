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
    <div>
    
        <asp:Label ID="Label1" runat="server" style="font-size: xx-large; text-align: center" Text="Sun &amp; Moon Coffee Shop Menu"></asp:Label>
        <br />
        <br />
        <strong><span class="auto-style1">Coffee Items</span><br class="auto-style1" />
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
        <asp:Label ID="Label2" runat="server" style="font-weight: 700; font-size: large" Text="Food Items"></asp:Label>
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
    </form>
</body>
</html>
