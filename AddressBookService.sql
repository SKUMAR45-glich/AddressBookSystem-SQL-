
--UC1_Creation_of_AddressBookSystem_Services_Database

create database AddressBookSystem_Service;


--UC2_Create-AddressBook-Table

use AddressBookSystem_Service;

create table AddressBookSystem
(
id int identity(101,2),
firstname varchar(40) not null,
lastname varchar(25),
address varchar(50),
city varchar(30),
state varchar(30),
zip varchar(7),
phone_number varchar(15),
email varchar(40)
);



--UC3_Insert_Details_to_AddressBook

INSERT INTO AddressBookSystem values
('Firstname','Surname','Flat No.4D, XYZ Apartment','City','State','123 456','+91 8777903888','fname.lname@gmail.com'),
('ABC','DEF','Gandhi More, everywhere','DGP','WB','700 247','+91 9038884295','abc.def@gmail.com'),
('Ram','Kumar','RK Road, overthetop','IntheCity','AtaState','258 741','+91 8100025896','ram.kumar@gmail.com');

SELECT * FROM AddressBookSystem;



--UC4_EditDetailUsingName

Update AddressBookSystem 
set city = 'newcity' where firstname = 'FirstName';

SELECT * FROM AddressBookSystem;



--UC5_Delete_Details_Using_name

INSERT INTO AddressBookSystem (firstname, lastname, address, city, state, zip, phone, email) values
('NametobeDeleted','Surname','Flat No.4D, XYZ Apartment','City','State','123 456','+91 8777903888','fname.lname@gmail.com');

SELECT * FROM AddressBookSystem;

DELETE FROM AddressBookSystem
WHERE firstname = 'NametobeDeleted';

SELECT * FROM AddressBookSystem;



--UC6_Retrieve-Person-From-A-State-Or-City

SELECT * FROM AddressBookSystem
WHERE city = 'DGP' OR state = 'State';



--UC7_Size_By_City_Or_State

SELECT city, COUNT(id) from AddressBookSystem
GROUP BY city;

SELECT state, COUNT(id) from AddressBookSystem
GROUP BY state;



--UC8_Retrieve_Entries-Sorted-Alphabetically

INSERT INTO AddressBookSystem values
('Fname','Surname','Flat No.4D, XYZ Apartment','City','State','123 456','+91 8777903888','fname.lname@gmail.com'),
('F_name','Surname','Flat No.4D, XYZ Apartment','City','State','123 456','+91 8777903888','fname.lname@gmail.com');


SELECT * FROM AddressBookSystem
where state = 'State'
ORDER BY firstname;

DELETE FROM AddressBookSystem
WHERE firstname IN ('Fname','F_name');
select * from AddressBookSystem;



--UC9_Alter-addressbook-to-add-new-column

ALTER TABLE AddressBookSystem
ADD contactname varchar(20);

ALTER TABLE AddressBookSystem
ADD contacttype varchar(20);

UPDATE AddressBookSystem
SET contactname = 'General',
    contacttype = 'Family'
WHERE id = 100;

UPDATE AddressBookSystem
SET contactname = 'General',
    contacttype = 'Friend'
WHERE id = 104;

select * from AddressBookSystem;



--UC10_NumberOfContactPersons_By_Type

SELECT contacttype, COUNT(id) as NumberOfContactPersons
from AddressBookSystem
GROUP BY contacttype;



--UC11_Add_Person_To_FriendandFamily

insert into AddressBookSystem values
('Jhon','Joe','Hall 5','Mumbai','Maharashtra','852469','+91 8777459321','johnjoe@gmail.com','General','Family'),
('Jhon','Joe','Hall 5','Mumbai','Maharashtra','852469','+91 8777459321','johnjoe@gmail.com','General','Friend');

select * from address_book;