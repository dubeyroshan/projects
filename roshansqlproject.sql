create database day2
use day2
select * from bank_inventory_pricing

## 1) product with highest estimated sales price and price of it 
select Product, estimated_sale_price, price from bank_inventory_pricing 
where estimated_sale_price = (select max(estimated_sale_price) from bank_inventory_pricing)


## 2) Total profit for each product

SELECT 
    Product,
    (Estimated_Sale_Price - Purchase_Cost) AS Total_Profit
FROM 
  bank_inventory_pricing 

## 3) NUll values in purchase cost column 

select count(*) from bank_inventory_pricing where purchase_cost is null


## 4) calculateb the total purchase_cost for eACH PRODUCT 

SELECT PRODUCT, SUM(purchase_cost)  AS TotalPurchaseCost
FROM  bank_inventory_pricing
GROUP BY PRODUCT


## 5) Calculate the total revenue for each product (Quantity * Estimated Sale Price).

 SELECT product,(QUANTITY * ESTIMATED_SALE_PRICE) AS REVENUE from bank_inventory_pricing 
   





