using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SunMoonCoffee
{
    public partial class OrderPage : System.Web.UI.Page
    {
        decimal sum;
        DataAccessLayer db = new DataAccessLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                for (int i = 0; i < orderSummaryView.Rows.Count; i++)
                {
                    sum += Convert.ToDecimal(orderSummaryView.Rows[i].Cells[1].Text);

                }

                TotalLabel.Text = "Total: $" + String.Format("{0:0.00}", sum);
                Session["orderTotal"] = sum;
                OrderIdLabel.Text = "Order ID: " + Convert.ToInt32(Session["newOrderId"]).ToString();

                //check if EditOrderId is valid
                if (Session["EditOrderId"] != null)
                {
                    //get the order
                    Order order = db.getOrder(Convert.ToInt32(Session["EditOrderId"].ToString()));

                    //set the customer name and disable
                    nameTextBox.Text = order.CustomerName;
                }
            }
        }



        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SunMoonCoffeeMenu.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void updateOrder(Order order)
        {
        }

        protected void ConfirmOrderBtn_Click(object sender, EventArgs e)
        {
            //TODO: updateOrder
            Order newOrder = new Order();
            newOrder.OrderID = Convert.ToInt32(Session["newOrderId"].ToString());
            newOrder.CustomerName = nameTextBox.Text;
            newOrder.OrderTotal = Convert.ToDecimal(Session["orderTotal"].ToString());
            newOrder.Status = "Submitted";

            db.updateOrder(newOrder);
            ClientScript.RegisterStartupScript(this.GetType(), "Sun Moon Coffee", "alert('" + "Your order # " + Convert.ToInt32(Session["newOrderId"]).ToString() + " was submitted!" + "');", true);

            //clear the session 
            TotalLabel.Text = "Total:";
            nameTextBox.Text = "";
            OrderIdLabel.Text = "Order ID: ";
            Session.Clear();
        }
    }
}