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
        }

        protected void createNewOrder()
        {
            Order newOrder = new Order();
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


//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;
//using System.Data.SqlClient;
//using System.Configuration;

//namespace SunMoonCoffee
//{
//    public partial class WebForm1 : System.Web.UI.Page
//    {

//        DataModel dataModel = new DataModel();

//        protected void Page_Load(object sender, EventArgs e)
//        {
//            //if (IsPostBack)
//            //{
//            //    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ProductCatalogConnectionString"].ConnectionString);
//            //    conn.Open();
//            //    string checkuser = "select count(*) from ProductCatalogConnectionString where StudentName='" + TextBox1.Text + "'";
//            //    SqlCommand cmd = new SqlCommand(checkuser, conn);
//            //    int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());

//            //    if (temp == 1)
//            //    {
//            //        Response.Write("Student Already Exist");
//            //    }

//            //    conn.Close();
//            //}

//        }

//        protected void Button1_Click(object sender, EventArgs e)
//        {
//            try
//            {

//                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ProductCatalogConnectionString"].ConnectionString);
//                conn.Open();
//                string insertQuery = "insert into RegisterDataBase(StudentName,Passwords,EmailId,Department,College)values (@studentname,@passwords,@emailid,@department,@college)";
//                SqlCommand cmd = new SqlCommand(insertQuery, conn);
//                cmd.Parameters.AddWithValue("@studentname", TextBox1.Text);
//                // cmd.Parameters.AddWithValue("@passwords", TextBox2.Text);
//                //cmd.Parameters.AddWithValue("@emailid", TextBox3.Text);
//                //cmd.Parameters.AddWithValue("@department", TextBox4.Text);
//                //cmd.Parameters.AddWithValue("@college", TextBox5.Text);
//                cmd.ExecuteNonQuery();

//                Response.Write("Student registeration Successfully!!!thank you");

//                conn.Close();

//            }
//            catch (Exception ex)
//            {
//                Response.Write("error" + ex.ToString());
//            }
//        }
//            //protected void Page_Load(object sender, EventArgs e)
//            //{

//            //}

//            protected void coffeeType_OnSelectedIndexChanged(object sender, EventArgs e)
//        {

//            coffeeDescription.Text = dataModel.coffeeItems[CoffeeTypeDropDownList.SelectedItem.Text];
//        }

//        protected void foodType_OnSelectedIndexChanged(object sender, EventArgs e)
//        {

//            foodDescription.Text = dataModel.foodItems[FoodTypeDropDownList.SelectedItem.Text];
//        }

//        protected void XmlDataSource1_Transforming(object sender, EventArgs e)
//        {

//        }
//    }
//}