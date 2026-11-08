USE trustsend25_db;

INSERT INTO customers (first_name, last_name, email, phone_num)
VALUES
    ('Ayantunde', 'Bode', 'ayantundebode@customer.com', '08020000000'),
    ('Ayantunde', 'Oluwaseun', 'ayantundeoluwaseun@test.com', '08020000001'),
    ('Charles', 'Peter', 'charlespush@test.com', '08020000002');

INSERT INTO hubs (hub_name, address, city, phone_num)
VALUES
    ('Demo Hub', 'Salem Bus Stop, Challenge Road', 'Ibadan', '08010000000'),
    ('Ilisan Hub', 'Ilisan Bus Stop', 'Ilisan', '07020000001');

 INSERT INTO sweepers (first_name, last_name, email, phone_num, availability_status)
 VALUES
    ('Tokunbo', 'Adeleye', 'tokunboadeleye@sweeper.com', '09091000000', 'Available'),
    ('Michael', 'Taiwo', 'michaeltaiwo@sweeper.com', '09092000000', 'Available'),
    ('Josha', 'Yinka', 'joshuayinka@sweeper.com', '09093000000', 'Available');

INSERT INTO deliveries (customer_id, hubs_id, sweeper_id, pickup_address, delivery_address, delivery_status, delivery_fee)
VALUES
    (1,1,1, 'Ibadan Hub','Challenge, Ibadan', 'Delivered', 10000.00),
    (2,2,2, 'Computer Village Hub','Ikeja', 'In Transit', 15000.00),
    (3,1,NULL, 'Badagry Hub','Badagry', 'Pending', 12000.00);