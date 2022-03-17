select
"CUSTOMER_ID",
"FIRST_NAME",
concat("FIRST_NAME",' ',"LAST_NAME") as FULL_NAME,
substring("EMAIL" from POSITION('@' in "EMAIL")+1 for char_length("EMAIL")-POSITION('@' in "EMAIL")) as DOMAIN
from
oltp_ds2.customers
