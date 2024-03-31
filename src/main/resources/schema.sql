CREATE TABLE brand (
                       id SERIAL PRIMARY KEY,
                       name VARCHAR(30)
);

CREATE TABLE phone (
                       id SERIAL PRIMARY KEY,
                       model VARCHAR(50) NOT NULL,
                       brand_id INTEGER REFERENCES brand(id)
);


CREATE TABLE IF NOT EXISTS phone (
                                     id SERIAL PRIMARY KEY,
                                     description VARCHAR(255) NOT NULL,
                                     price DECIMAL(10, 2) NOT NULL,
                                     quantity INT NOT NULL
);

CREATE TABLE IF NOT EXISTS customer (
                                        id SERIAL PRIMARY KEY,
                                        name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS orders (
                                      id SERIAL PRIMARY KEY,
                                      id_phone INT NOT NULL,
                                      id_customer INT NOT NULL,
                                      order_date DATE NOT NULL,
                                      quantity INT NOT NULL,
                                      FOREIGN KEY (id_phone) REFERENCES phone(id),
                                      FOREIGN KEY (id_customer) REFERENCES customer(id)
);
--	Заполнение таблиц:
INSERT INTO phone (description, price, quantity) VALUES
                                                     ('Телефон Samsung', 100.00, 10),
                                                     ('Телефон Apple', 200.00, 20),
                                                     ('Телефон Xiaomi', 300.00, 30),
                                                     ('Телефон Huawei', 400.00, 40),
                                                     ('Телефон Nokia', 500.00, 50),
                                                     ('Телефон Sony', 600.00, 60),
                                                     ('Телефон LG', 700.00, 70),
                                                     ('Телефон Motorola', 800.00, 80),
                                                     ('Телефон OnePlus', 900.00, 90),
                                                     ('Телефон Google', 1000.00, 100);

INSERT INTO customer (name) VALUES
                                ('Иванов Иван'),
                                ('Петров Петр'),
                                ('Сидоров Сидор'),
                                ('Васильев Василий'),
                                ('Алексеев Алексей'),
                                ('Сергеев Сергей'),
                                ('Андреев Андрей'),
                                ('Антонов Антон'),
                                ('Александров Александр'),
                                ('Михайлов Михаил');

INSERT INTO orders (id_phone, id_customer, order_date, quantity) VALUES
                                                                     (1, 1, '2024-02-18', 2),
                                                                     (2, 2, '2024-02-19', 3),
                                                                     (3, 3, '2024-02-20', 4),
                                                                     (4, 4, '2024-02-21', 5),
                                                                     (5, 5, '2024-02-22', 6),
                                                                     (6, 6, '2024-02-23', 7),
                                                                     (7, 7, '2024-02-24', 8),
                                                                     (8, 8, '2024-02-25', 9),
                                                                     (9, 9, '2024-02-26', 10),
                                                                     (10, 10, '2024-02-27', 1);
