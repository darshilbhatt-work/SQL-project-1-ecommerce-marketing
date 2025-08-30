INSERT INTO customers VALUES
(1,'Alice','Smith','Berlin','2023-01-10'),
(2,'Bob','Miller','Munich','2023-02-15'),
(3,'Charlie','Khan','Berlin','2023-03-01'),
(4,'Diana','Schmidt','Hamburg','2023-04-20'),
(5,'Eva','Meyer','Cologne','2023-05-11');

INSERT INTO campaigns VALUES
(101,'Spring Sale','Email','2023-03-01','2023-03-15'),
(102,'Summer Ads','Ads','2023-06-01','2023-06-30'),
(103,'Holiday Blast','Social','2023-12-01','2023-12-25');

INSERT INTO products VALUES
(201,'Laptop','Electronics',1200.00),
(202,'Headphones','Electronics',150.00),
(203,'Shoes','Fashion',80.00),
(204,'T-Shirt','Fashion',25.00),
(205,'Coffee Maker','Home',90.00);

INSERT INTO orders VALUES
(301,1,'2023-03-05',1200.00,101),
(302,2,'2023-03-07',150.00,101),
(303,1,'2023-06-10',80.00,102),
(304,3,'2023-06-15',215.00,102),
(305,4,'2023-07-01',90.00,NULL);

INSERT INTO order_items VALUES
(401,301,201,1),
(402,302,202,1),
(403,303,203,1),
(404,304,202,1),
(405,304,204,2),
(406,305,205,1);
