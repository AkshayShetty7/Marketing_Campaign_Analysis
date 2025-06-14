USE MarketingCampaignDB;
GO
--IN THE TABLE countries MAKE countryid PK AND NOT NULL
alter table countries
add constraint prk3 primary key(countryid)

alter table countries
alter column countryid int not null


--IN THE TABLE customers MAKE Custid PK AND NOT NULL
alter table customers
add constraint prk4 primary key(Custid)

alter table customers
alter column Custid int not null


--IN THE TABLE products MAKE Productid PK AND NOT NULL
alter table products
add constraint prk5 primary key(Productid)

alter table products
alter column Productid int not null


--ADD FOREIGN KEYS

alter table cust_review
add constraint fk1 foreign key(custid) references customers(custid)

alter table cust_journey
add constraint fk2 foreign key(custid) references customers(custid)

alter table engagement_data
add constraint fk3 foreign key(productid) references products(productid)

alter table cust_journey
add constraint fk4 foreign key(productid) references products(productid)

alter table customers
add constraint fk6 foreign key(locid) references Countries(countryid)




