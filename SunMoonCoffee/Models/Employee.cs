using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SunMoonCoffee.Models
{
    using System;
    using System.Collections.Generic;

    public partial class Employee
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Employee()
        {
            this.EmployeeLogin = new HashSet<SunMoonCoffee.Employee>();
        }

        public int Id { get; set; }
        public string Name { get; set; } 
        public string Password { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SunMoonCoffee.Employee> EmployeeLogin { get; set; }
    }
}
