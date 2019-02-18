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
            //int sum;
            for (int i = 0; i < orderSummaryView.Rows.Count; i++)
            {
                sum += Convert.ToDecimal(orderSummaryView.Rows[i].Cells[1].Text);

            }

            TotalLabel.Text = TotalLabel.Text + Convert.ToString(sum);
            Session["orderTotal"] = sum;


        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Redirect("SunMoonCoffeeMenu.aspx");
            Server.Transfer("SunMoonCoffeeMenu.aspx");
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
        }
    }
}