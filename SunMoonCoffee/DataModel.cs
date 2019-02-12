using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SunMoonCoffee
{
    public class DataModel
    { //Up 

        public Dictionary<string, string> coffeeItems = new Dictionary<string, string>() {
            { "Coffee", "Sun & Moon Coffee In House Brew" },
            { "Latte", "Latte" },
            { "Cappuccino", "Cappucino" },
            { "Espresso", "Espresso" },
            { "Iced Latte", "Iced Latte" },
        };

        public Dictionary<string, string> foodItems = new Dictionary<string, string>() {
            { "Croissant", "Light and Buttery Croissant" },
            { "Donut", "Glazed Cake Donut" },
            { "Fruit Tray", "Assorted Fresh Fruits" },
            { "Cookie", "Fresh Baked Chocolate Chip Cookie" },
            { "Cinnamon Bun", "Warm Cinnamon Bun with Glaze" },
        };


    }



}
