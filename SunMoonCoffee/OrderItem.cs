using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SunMoonCoffee
{
    

    public class OrderItem
    {
        //TODO: add correct attributes needed for persistence
        //These are just placeholders
        string itemName;

        public OrderItem()
        {

        }

        public OrderItem(string name)
        {
            itemName = name;
        }

        public string getItemName()
        {
            return itemName;
        }

        public void setItemName(string name)
        {
            itemName = name;
        } 
    }
}