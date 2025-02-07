With stg_customers AS (
   SELECT
      customer_id,
      CONCAT(first_name, ' ', last_name) as customer_name,
      email as email_address,
      address as billing_address,
      {{get_date_parts('birthdate')}} as date_extract
   FROM Customer.Customer
)

Select * from stg_customers