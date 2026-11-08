SELECT
    d.delivery_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    h.hub_name,
    CONCAT(s.first_name, ' ', s.last_name) AS sweeper_name,
    d.delivery_status,
    d.delivery_fee
FROM deliveries d
JOIN customers c
    ON d.customer_id = c.customer_id
LEFT JOIN hubs h
    ON d.hubs_id = h.hubs_id
LEFT JOIN sweepers s
    ON d.sweeper_id = s.sweeper_id;