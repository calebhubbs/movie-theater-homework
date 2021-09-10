select * 
from customer

INSERT INTO customer(first_name, last_name, payment_info, phone)
VALUES
('Caleb', 'Hubbs', 'visa', 314532),
('Joe', 'Buck', 'visa', 3134414),
('Ash', 'Ketchum', 'mastercard', 2344515)
RETURNING *;


select * 
from movies

insert into movies (title, rating)
values 
('Step Brothers', 'R'),
('Transformers', 'PG-13'),
('Zootopia', 'PG')
returning *;


select * 
from purchase 

insert into purchase (purchase_id, total, customer_id)
values
(1, 15.00, 1),
(2, 20.00, 2), 
(3, 25.00, 3)
returning *;


select * 
from concession 

insert into concession (concession_id, concession_name, price, purchase_id)
values 
(1, 1, 4.00, 1),
(2, 2, 6.00, 2),
(3, 3, 3.00, 3)
returning *;

select * 
from tickets

insert into tickets(ticket_id, price, purchase_id, movie_id)
values
(1, 7.00, 1, 1),
(2, 7.00, 2, 2),
(3, 7.00, 3, 3)
returning *;
