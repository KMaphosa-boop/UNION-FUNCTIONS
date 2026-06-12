-- Databricks notebook source
--UNION AND UNION ALL--

--UNION--
--QUESTION 1
SELECT account_id, account_holder, 'sandton' AS city
FROM brightlearnsql.union.`01_branch_sandton_accounts`
UNION 
SELECT account_id , account_holder, 'rosebank' AS city
FROM brightlearnsql.union.`02_branch_rosebank_accounts`;

--Question 2
SELECT product_code,product_name, 'savings' AS product_type
FROM brightlearnsql.union.`03_savings_products`
UNION 
SELECT product_code,product_name, 'current' AS product_type
FROM brightlearnsql.union.`04_current_products`;

--Question 3
SELECT staff_id,staff_name
FROM brightlearnsql.union.`05_retail_banking_staff`
UNION 
SELECT staff_id,staff_name 
FROM brightlearnsql.union.`06_corporate_banking_staff`;

--Question 4
SELECT city_code,city_name
FROM brightlearnsql.union.`07_mobile_branch_cities`
UNION
SELECT city_code,city_name
FROM brightlearnsql.union.`08_digital_branch_cities`;

--Question 5
SELECT customer_id,customer_name
FROM brightlearnsql.union.`09_push_notification_targets`
UNION
SELECT customer_id,customer_name
FROM brightlearnsql.union.`10_inapp_banner_targets`;

-- UNION ALL--
--Question 6
SELECT txn_id,account_id,amount
FROM brightlearnsql.union.`11_atm_01_transactions`
UNION ALL
SELECT txn_id,account_id,amount
FROM brightlearnsql.union.`12_atm_02_transactions`;

--Question 7
SELECT app_id,customer_id,loan_type
FROM brightlearnsql.union.`14_western_cape_loan_applications`
UNION ALL
SELECT app_id,customer_id
FROM brightlearnsql.union.`13_gauteng_loan_applications`;

--Question 8
SELECT complaint_id, customer_id,'email' AS Category
FROM brightlearnsql.union.`15_email_complaints`
UNION ALL
SELECT complaint_id,customer_id,'app' AS Category
FROM brightlearnsql.union.`16_app_complaints`;

--Question 9
SELECT payment_id,account_id,amount,'April' as payment_date
FROM brightlearnsql.union.`17_april_payments`
UNION ALL
SELECT payment_id,account_id,amount,'May' AS payment_date
FROM brightlearnsql.union.`18_may_payments`;

--Quesstion 10
SELECT entry_id,account_id,entry_type
FROM brightlearnsql.union.`19_debit_entries`
UNION ALL
SELECT entry_id,account_id,entry_type
FROM brightlearnsql.union.`20_credit_entries`;

--BONUS QUESTIONS ANSWERS
--Q1. They should use UNION as the Fraud analyst wants unique customers who appeared in either january or february.
--Q2. They should use the UNION ALL as it returns all rows even though there will be duplicates.
--Q3. The column number is not the same with the other table therefore it wont run because when combining with Union ,we need identical tables which means city must be in both tables for the query to run succesfully.

