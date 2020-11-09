using System;

namespace AddressBookSystem
{
    public class Program
    {
        public static void Main(string[] args)
        {
            Console.WriteLine("Welcome to Address Book System!");


            AddressDetails addressDetails = new AddressDetails();
            addressDetails.GetAllDetails();

        }
    }
}
