using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SunMoonCoffee
{
    public partial class EmployeePage : System.Web.UI.Page
    {
        Employee List = new Employee();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// Login event handler that allows the username and pass to be checked
        /// </summary>
        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            string field = Login1.UserName.ToString();
            string pass = Login1.Password.ToString();

            try
            {
               // using (Order context = new Order())
               // {
                  //  var user = context.EmployeeLogin.FirstOrDefault(u => u.Name == field);


                    if (field == "Emplyee")
                  //  {
                        if ("1234" == pass)
                        {
                            ///"Employee" = user.Name;
                            Login1.FailureText = "Pass";
                            Response.Redirect("OrderPage.aspx");
                        }
                        else
                        {
                            Login1.FailureText = "Wrong Password";
                        }
                   // }
                    //else
                    //{
                    //    Login1.FailureText = "Wrong Username";
                    //}
              //  }
            }
            catch
            {
                Login1.FailureText = "Error";
            }

        }

        /// <summary>
        /// Unused
        /// </summary>
        protected void Password_TextChanged(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// Unused
        /// </summary>
        protected void UserName_TextChanged(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// Unused
        /// </summary>
        protected void LoginButton_Click(object sender, EventArgs e)
        {

        }

        private class Employee
        {
            internal object EmployeeLogin;
        }
    }
}
