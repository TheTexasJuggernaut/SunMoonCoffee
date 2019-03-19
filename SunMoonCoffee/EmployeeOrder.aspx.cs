using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SunMoonCoffee
{
    public partial class EmployeeOrder : System.Web.UI.Page
    {
        DataAccessLayer db = new DataAccessLayer();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            //int orderItemId = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);

            //remove from db
            //Order newOrder = new Order();
            //db.ProcessOrder(newOrder);
            //newOrder.Status = "Submitted";
            //refresh the view
            //GridView1.DataBind();
            //calculateTotal();
        }
    }
}