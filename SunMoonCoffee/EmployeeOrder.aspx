<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeOrder.aspx.cs" Inherits="SunMoonCoffee.EmployeeOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 1024px">
    <form id="form1" runat="server">
        <div style="background: #336699 url('Pic%20Repo/sun-moon-tonic.jpg') repeat-y fixed right top; height: 1015px;">
            <asp:Panel ID="Panel1" runat="server" BackColor="#996600" BorderColor="Black" BorderStyle="Solid" Font-Size="X-Large" style="z-index: 1; left: 21px; top: 25px; position: absolute; height: 40px; width: 1266px; margin-top: 1px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;EMPLOYEE - ORDER VIEW</asp:Panel>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                    <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    <asp:BoundField DataField="OrderTotal" HeaderText="OrderTotal" SortExpression="OrderTotal" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ProductCatalogConnectionString %>" DeleteCommand="DELETE FROM [Orders] WHERE [OrderID] = @original_OrderID AND (([CustomerName] = @original_CustomerName) OR ([CustomerName] IS NULL AND @original_CustomerName IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL)) AND (([OrderTotal] = @original_OrderTotal) OR ([OrderTotal] IS NULL AND @original_OrderTotal IS NULL))" InsertCommand="INSERT INTO [Orders] ([CustomerName], [Status], [OrderTotal]) VALUES (@CustomerName, @Status, @OrderTotal)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [OrderID], [CustomerName], [Status], [OrderTotal] FROM [Orders]" UpdateCommand="UPDATE [Orders] SET [CustomerName] = @CustomerName, [Status] = @Status, [OrderTotal] = @OrderTotal WHERE [OrderID] = @original_OrderID AND (([CustomerName] = @original_CustomerName) OR ([CustomerName] IS NULL AND @original_CustomerName IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL)) AND (([OrderTotal] = @original_OrderTotal) OR ([OrderTotal] IS NULL AND @original_OrderTotal IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_OrderID" Type="Int32" />
                    <asp:Parameter Name="original_CustomerName" Type="String" />
                    <asp:Parameter Name="original_Status" Type="String" />
                    <asp:Parameter Name="original_OrderTotal" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CustomerName" Type="String" />
                    <asp:Parameter Name="Status" Type="String" />
                    <asp:Parameter Name="OrderTotal" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CustomerName" Type="String" />
                    <asp:Parameter Name="Status" Type="String" />
                    <asp:Parameter Name="OrderTotal" Type="Decimal" />
                    <asp:Parameter Name="original_OrderID" Type="Int32" />
                    <asp:Parameter Name="original_CustomerName" Type="String" />
                    <asp:Parameter Name="original_Status" Type="String" />
                    <asp:Parameter Name="original_OrderTotal" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
