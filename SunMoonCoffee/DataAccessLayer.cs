using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SunMoonCoffee
{
    public class DataAccessLayer
    {
        public void addOrderItem(OrderItem orderItem)
        {
            using (var context = new ProductCatalogEntities_Orders())
            {
                context.OrderItems.Add(orderItem);
                context.SaveChanges();
            }
        }

        public int addOrder(Order order)
        {
            using (var context = new ProductCatalogEntities_Orders())
            {
                context.Orders.Add(order);
                context.SaveChanges();
            }

            return order.OrderID;
        }

        public Product getProduct(int productID)
        {
            using (var context = new ProductCatalogEntities_Orders())
            {
                Product product = (from p in context.Products
                               where p.Id == productID
                               select p).FirstOrDefault<Product>();
                return product;
            }
        }

        public void updateOrder(Order order)
        {
            using (var context = new ProductCatalogEntities_Orders())
            {
                Order orderRecord = (from p in context.Orders
                                   where p.OrderID == order.OrderID
                                   select p).FirstOrDefault<Order>();
                orderRecord.CustomerName = order.CustomerName;
                orderRecord.OrderTotal = order.OrderTotal;
                orderRecord.Status = "Submitted";
                context.SaveChanges();
            }
        }
    }
}