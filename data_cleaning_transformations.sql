USE MarketingCampaignDB;
GO


				--*******engagement_data*******
--check for number of rows in eng_date not in the date format
select * from engagement_data where isdate(Eng_date)=0;

--convert from string to date using convert function and update the datatype of that particular column in the table
update engagement_data set Eng_date=convert(date,Eng_date,105)
alter table engagement_data alter column Eng_date date


				--*******cust_review*******

select * from cust_review where ISDATE(reviewdate)=0;
update cust_review set reviewdate=convert(date,ReviewDate,105)
alter table cust_review alter column reviewdate date


				--*******cust_journey*******

select * from cust_journey where ISDATE(Duration)=0;
update cust_journey set Duration = NULL where Duration = 'Null'
alter table cust_journey alter column Duration int
alter table cust_journey alter column Visitdate date
update cust_journey set Visitdate = convert(date, Visitdate, 105)


--verify the table update
select TABLE_NAME,COLUMN_NAME , DATA_TYPE 
from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME in ('cust_journey','engagement_data','cust_review')



