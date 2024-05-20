/* Write your T-SQL query statement below */
/*
SELECT
    P.product_id,
    ISNULL(ROUND(SUM(P.price * US.units * 1.0) / SUM(US.units), 2), 0) AS average_price 
FROM Prices P
    LEFT LOOP JOIN UnitsSold US ON US.product_id = P.product_id 
        AND US.purchase_date BETWEEN P.start_date AND P.end_date
GROUP BY P.product_id       
*/
/* Write your T-SQL query statement below */
select 
    prices.product_id, 
    case
        when round(sum(units * price * 1.00)/sum(units * 1.00), 2) IS NULL
        then 0
        else round(sum(units * price * 1.00)/sum(units * 1.00), 2) 
    end as average_price
from prices
left join unitssold on (unitsSold.purchase_date between prices.start_date and prices.end_date) and Unitssold.product_id = prices.product_id
group by prices.product_id
