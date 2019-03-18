using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SunMoonCoffee
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        DataModel dataModel = new DataModel();
        CurrentOrder currentOrder = new CurrentOrder();
        DataAccessLayer db = new DataAccessLayer();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {

                //persist new Order for this session
                createNewOrder();
            }

            //check if EditOrderId is valid
            if(Session["EditOrderId"] != null)
            {
                Session["newOrderId"] = Session["EditOrderId"];
            }

            //refresh the order list
            orderList.DataBind();
        }

        protected void createNewOrder()
        {
            Employee newOrder = new Employee();
            int id = db.addOrder(newOrder);
            Session["newOrderId"] = id;
        }

        protected void coffeeType_OnSelectedIndexChanged(object sender, EventArgs e)
        {

            coffeeDescription.Text = dataModel.coffeeItems[CoffeeTypeDropDownList.SelectedItem.Text];
        }

        protected void foodType_OnSelectedIndexChanged(object sender, EventArgs e)
        {

            foodDescription.Text = dataModel.foodItems[FoodTypeDropDownList.SelectedItem.Text];
        }

        protected void addCoffeeToOrderBtn_onClick(Object sender,
                           EventArgs e)
        {
            addProductToOrder(CoffeeTypeDropDownList.SelectedItem.Value);

            orderSummary.Text = orderSummary.Text + CoffeeTypeDropDownList.SelectedItem.Text + "\n";

        }

        protected void addFoodToOrderBtn_onClick(Object sender,
                           EventArgs e)
        {
            addProductToOrder(FoodTypeDropDownList.SelectedItem.Value);

            orderSummary.Text = orderSummary.Text + FoodTypeDropDownList.SelectedItem.Text + "\n";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Server.Transfer("OrderPage.aspx");
            Response.Redirect("OrderPage.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void addProductToOrder(String selectedProductID)
        {
            OrderItem orderItem = new OrderItem()
            {
                OrderID = Convert.ToInt32(Session["newOrderId"].ToString()),
                ProductID = Convert.ToInt32(selectedProductID),
                Price = db.getProduct(Convert.ToInt32(selectedProductID)).Price,
                ProductName = db.getProduct(Convert.ToInt32(selectedProductID)).ProductName
            };

            db.addOrderItem(orderItem);

            //update orderList
            orderList.DataBind();
        }

        protected void EmployeeLoginBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployeePage.aspx");
        }

        protected void EditOrderBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditOrderPage.aspx");
        }
    }
}


