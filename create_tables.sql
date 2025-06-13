-- Step 1: Create database
create database MarketingCampaignDB
USE MarketingCampaignDB;
GO

-- Step 2: Create Tables
create table products
(Productid int, Prd_name Varchar(max), Category char(6), Price decimal(10,2)) 

create table countries
(countryID int, Country varchar(max), City varchar(max))

create table engagement_data
(EngagementID int, ContentID int, ContentType varchar(max), Likes int, Eng_date date,
CampaignID int, ProductID int, View_s_clicks_comb varchar(max))

create table customers
(Custid int, CustName varchar(max), Email varchar(max), Gender varchar(20), Age int, Locid int)

create table cust_review
(Reviewid int, Custid int, Productid int, ReviewDate date, Rating int, Review_text text)

create table cust_journey
(Journeyid int, Custid int, Productid int, Visitdate date, Stage varchar(max), Action varchar(max), Duration int)

-- Verify tables
select Table_name from INFORMATION_SCHEMA.tables
