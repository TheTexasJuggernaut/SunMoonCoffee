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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void coffeeType_OnSelectedIndexChanged(object sender, EventArgs e)
        {
           
            coffeeDescription.Text = dataModel.coffeeItems[CoffeeTypeDropDownList.SelectedItem.Text];
        }

        protected void foodType_OnSelectedIndexChanged(object sender, EventArgs e)
        {
         
            foodDescription.Text = dataModel.foodItems[FoodTypeDropDownList.SelectedItem.Text];
        }
    }
}