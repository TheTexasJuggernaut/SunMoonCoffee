using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SunMoonCoffee
{
    public class CurrentOrder
    {
        System.Collections.ArrayList orderItems = new System.Collections.ArrayList();

        public CurrentOrder()
        {

        }

        public void addItem(OrderItem item)
        {
            orderItems.Add(item);
        }

        public System.Collections.ArrayList getItems()
        {
            return orderItems;
        }
    }
}