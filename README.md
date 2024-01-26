rails g model User first_name last_name email phone_number 
rails g model Product name description:text 
rails g model Variant product:references sku price_cents:integer
rails g model Address name phone_number line1 line2 city country_code postcode   
rails g model Order billing_address_id:bigint shipping_address_id:bigint user:references grand_total_cents:integer 
rails g model OrderLine description price_cents:integer quantity:integer total_cents:integer variant:references product:references 
rails g model Cart user:references 
rails g model CartLine variant:references quantity:integer 

rails g scaffold News title author content:text
