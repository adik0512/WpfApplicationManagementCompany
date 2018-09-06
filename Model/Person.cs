using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfApplicationManagementCompany.Model
{
    public class Person
    {

        public int userID { get; set; }
        public string firstName { get; set; }
        public string lastName { get; set; }
        public string contract { get; set; }
        public int salary { get; set; }
        public Person(int userID, string firstName, string lastName, string contract, int salary)
        {
            this.userID = userID;
            this.firstName = firstName;
            this.lastName = lastName;
            this.contract = contract;
            this.salary = salary;
        }
    }

}
