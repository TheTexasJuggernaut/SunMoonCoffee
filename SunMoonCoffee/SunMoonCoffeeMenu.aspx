﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SunMoonCoffeeMenu.aspx.cs" Inherits="SunMoonCoffee.WebForm1" %>

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
    <div style="background: #336699 url('Pic Repo/sun-moon-tonic.jpg') repeat-y fixed right top; border: thin double #000000; margin-left: 0px;">
    
        <asp:LinkButton ID="EmployeeLoginBtn" runat="server" OnClick="EmployeeLoginBtn_Click" ForeColor="Black">Employee Login</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="EditOrderBtn" runat="server" OnClick="EditOrderBtn_Click" ForeColor="Black">Edit Order</asp:LinkButton>
        <br />
    
        <br />
    
        <asp:Label ID="Label1" runat="server" style="font-size: xx-large; text-align: center; margin-left: 13px;" Text="Sun &amp; Moon Coffee Shop Menu" BackColor="#996600" BorderColor="Black" BorderStyle="Solid" Width="1278px"></asp:Label>
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" Height="165px" ImageUrl="~/Pic Repo/Food_Beverages_Hot_drink_mug-512.png" Width="189px" style="margin-left: 48px" />
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
        <asp:DropDownList ID="CoffeeTypeDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged = "coffeeType_OnSelectedIndexChanged" DataSourceID="CoffeeItemsDataSource" DataTextField="ProductName" DataValueField="Id" BackColor="#996600">
        </asp:DropDownList>
        <asp:SqlDataSource ID="CoffeeItemsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ProductCatalogConnectionString %>" SelectCommand="SELECT [ProductName], [Id] FROM [Products] WHERE ([Type] LIKE '%' + @Type + '%')">
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
        <asp:Image ID="Image2" runat="server" Height="128px" ImageUrl="~/Pic Repo/food-outline-filled.png" Width="190px" style="margin-left: 47px" />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" style="font-weight: 700; font-size: large; margin-left: 0px; margin-bottom: 1px;" Text="Food Items" BorderColor="Black" BorderStyle="None" Width="196px"></asp:Label>
        <br />
        <br />
        <br />
        <asp:DropDownList ID="FoodTypeDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged = "foodType_OnSelectedIndexChanged" DataSourceID="FoodItemsDataSource" DataTextField="ProductName" DataValueField="Id" BackColor="#996600">
        </asp:DropDownList>
        <asp:SqlDataSource ID="FoodItemsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ProductCatalogConnectionString %>" SelectCommand="SELECT [ProductName], [Id] FROM [Products] WHERE ([Type] LIKE '%' + @Type + '%')">
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
        <asp:Image ID="Image3" runat="server" ImageUrl="~/Pic Repo/cart-icon-png-transparent-7.png" style="margin-left: 60px; margin-top: 0px" Width="173px" />
        <br />
        <br />
    
        <asp:Label ID="orderSummary" runat="server"></asp:Label>
    
        <br />
        <br />
        <asp:GridView ID="orderList" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="398px" AutoGenerateColumns="False" DataSourceID="OrderSummaryDataSource">
            <Columns>
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="OrderSummaryDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ProductCatalogConnectionString %>" SelectCommand="SELECT [ProductName], [Price] FROM [OrderItems] WHERE ([OrderID] = @OrderID)">
            <SelectParameters>
                <asp:SessionParameter Name="OrderID" SessionField="newOrderId" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
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
