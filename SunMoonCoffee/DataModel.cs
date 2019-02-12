using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SunMoonCoffee
{
    public class DataModel
    {

        public Dictionary<string, string> coffeeItems = new Dictionary<string, string>() {
            { "Coffee", "Sun & Moon Coffee In House Brew" },
            { "Latte", "A coffee drink made with espresso and steamed milk." },
            { "Cappuccino", "Traditional cappuccino of a single espresso, on which the barista pours the hot foamed milk." },
            { "Espresso", "Full-flavored, concentrated form of coffee, served in shots." },
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