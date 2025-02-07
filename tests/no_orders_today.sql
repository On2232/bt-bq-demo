select count(*) as num_orders_today
from Customer.Customer
where DATE(birthdate) > CURRENT_DATE()
having count(*) >0
