{{ config(
    materialized='table'
) }}

select
    d.SalesOrderID,
    d.SalesOrderDetailID,
    h.OrderDate,
    h.CustomerID,
    h.TerritoryID,
    h.OnlineOrderFlag,
    d.ProductID,
    d.OrderQty,
    d.UnitPrice,
    d.UnitPriceDiscount,
    d.LineTotal
from {{ source('bronze', 'sales_order_detail') }} d
inner join {{ source('bronze', 'sales_order_header') }} h
    on d.SalesOrderID = h.SalesOrderID