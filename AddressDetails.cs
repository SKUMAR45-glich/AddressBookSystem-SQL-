using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;

namespace AddressBookSystem
{
    public class AddressDetails
    {
        public static string connectionString = @"Data Source=DESKTOP-SC0MR56\SQLEXPRESS;Initial Catalog=AddressBookSystem_Service;Integrated Security=True";
        SqlConnection connection = new SqlConnection(connectionString);

        public void GetAllDetails()
        {
            try
            {
                AddressModel addressModel = new AddressModel();
                string query = @"Select * from AddressBookSystem;";
                SqlCommand cmd = new SqlCommand(query, this.connection);
                this.connection.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if(dr.HasRows)
                {
                    Console.WriteLine("\tID\tFirstName\tLastName\tAddress");
                    Console.WriteLine("\t--\t---------\t--------\t-------");
                    while(dr.Read())
                    {
                        addressModel.id = dr.GetInt32(0);
                        addressModel.firstname = dr.GetString(1);
                        addressModel.lastname = dr.GetString(2);
                        addressModel.address = dr.GetString(3);

                        Console.WriteLine("\t" + addressModel.id + "\t" + addressModel.firstname + "\t" + addressModel.lastname + "\t\t" + addressModel.address);
                    }
                }
                else
                {
                    Console.WriteLine("No data found");
                }
            }
            catch(Exception e)
            {
                Console.WriteLine(e.Message);
            }
            finally
            {
                connection.Close();
            }
        }
    }
}
