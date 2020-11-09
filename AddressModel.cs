using System;
using System.Collections.Generic;
using System.Text;

namespace AddressBookSystem
{
    public class AddressModel
    {
        public int id { get; set; }
        public string firstname { get; set; }
        public string lastname { get; set; }
        public string address { get; set; }


        public void Display()
        {
            Console.WriteLine(id + " " + firstname + " " + lastname + " " + address);
            Console.WriteLine();
        }
    }
}
