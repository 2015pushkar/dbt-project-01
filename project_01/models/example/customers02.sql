SELECT
*
FROM
oltp_ds2.customers
LEFT JOIN
oltp_ds2.address on
{{ref('oltp_ds2.customers')}}.CUSTOMER_ID = {{ref('oltp_ds2.address')}}.CUSTOMER_ID
