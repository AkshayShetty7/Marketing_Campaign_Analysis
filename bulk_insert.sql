USE MarketingCampaignDB;
GO

--bulk insert data from csv

bulk insert products
from 'C:\Users\Akshay Shetty\Downloads\drive-download-20250613T081421Z-1-001\Products.csv'
with (fieldterminator=',',Rowterminator='\n',firstrow=2)

bulk insert countries
from 'C:\Users\Akshay Shetty\Downloads\drive-download-20250613T081421Z-1-001\Countries.csv'
with (fieldterminator=',',Rowterminator='\n',firstrow=2)


--the column eng_date in table engagement_data is not in the format YYYY-MM-DD
--read it using varchar 
bulk insert engagement_data
from 'C:\Users\Akshay Shetty\Downloads\drive-download-20250613T081421Z-1-001\Engagement_data.csv'
with (fieldterminator=',',Rowterminator='\n',firstrow=2)

alter table engagement_data alter column eng_date varchar(50)



--the column reviewDate in table cust_review is not in the format YYYY-MM-DD
--read it using varchar 
bulk insert cust_review
from 'C:\Users\Akshay Shetty\Downloads\drive-download-20250613T081421Z-1-001\Cust_review.csv'
with (fieldterminator=',',Rowterminator='\n',firstrow=2)

alter table cust_review alter column reviewDate varchar(50)



--the column duration,visitdate in table cust_journey is not in the format YYYY-MM-DD
--read it using varchar 
bulk insert cust_journey
from 'C:\Users\Akshay Shetty\Downloads\drive-download-20250613T081421Z-1-001\customer_journey.csv'
with (fieldterminator=',',Rowterminator='\n',firstrow=2)

alter table cust_journey alter column duration varchar(40)
alter table cust_journey alter column visitdate varchar(40)



bulk insert customers
from 'C:\Users\Akshay Shetty\Downloads\drive-download-20250613T081421Z-1-001\Customers.csv'
with (fieldterminator=',',Rowterminator='\n',firstrow=2)



--view all inserted data 
select * from products;
select * from countries;
select * from engagement_data;
select * from cust_review;
select * from cust_journey;
select * from customers;