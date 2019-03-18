using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SunMoonCoffee
{
    public partial class EditOrderPage : System.Web.UI.Page
    {
        DataAccessLayer db = new DataAccessLayer();
        decimal sum;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LookupOrderBtn_Click(object sender, EventArgs e)
        {
            //get the customer name and order Id
            Session["EditOrderId"] = OrderIdTextBox.Text;
            OrderIdLabel.Text = "Order ID: " + Session["EditOrderId"].ToString();
            CustomerLabel.Text = "Customer Name: " + CustomerNameTextBox.Text;

            //update the order summary panel and make it visible
            orderSummaryView.DataBind();
            calculateTotal();
            OrderSummaryPanel.Visible = true;
        }

        protected void calculateTotal()
        {

            sum = 0;

            for (int i = 0; i < orderSummaryView.Rows.Count; i++)
            {
                sum += Convert.ToDecimal(orderSummaryView.Rows[i].Cells[3].Text);

            }

            TotalLabel.Text = "Total: $" + String.Format("{0:0.00}", sum);


        }

        protected void orderSummaryView_SelectedIndexChanged(object sender, EventArgs e)
        {
            int orderItemId = Convert.ToInt32(orderSummaryView.SelectedRow.Cells[1].Text);

            //remove from db
            db.removeOrderItem(orderItemId);
            //refresh the view
            orderSummaryView.DataBind();
            calculateTotal();
        }

        protected void AddToOrderBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("SunMoonCoffeeMenu.aspx");
        }
    }
}