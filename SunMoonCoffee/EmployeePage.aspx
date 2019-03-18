<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeePage.aspx.cs" Inherits="SunMoonCoffee.EmployeePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 545px">
    <form id="form1" runat="server">
    <div style="background: #336699 url('Pic%20Repo/sun-moon-tonic.jpg') repeat-y fixed right top; height: 752px;">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Panel ID="Panel1" runat="server" BackColor="#996600" BorderColor="Black" BorderStyle="Solid" Font-Size="X-Large" style="z-index: 1; left: 13px; top: 14px; position: absolute; height: 44px; width: 1520px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Pic Repo/Home.png" PostBackUrl="~/SunMoonCoffeeMenu.aspx" style="z-index: 1; left: 11px; top: 1px; position: absolute; height: 41px; width: 45px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;EMPLOYEE HOME</asp:Panel>
    
        <asp:Login ID="Login1" runat="server" BackColor="#999999" BorderColor="Black" BorderStyle="Solid" style="z-index: 1; left: 138px; top: 208px; position: absolute; height: 219px; width: 377px" OnAuthenticate="Login1_Authenticate" UserNameLabelText="Username:" DisplayRememberMe="False">
        </asp:Login>
    
    </div>
    </form>
</body>
</html>
