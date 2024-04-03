-- Создаем датубазу phone_store .
CREATE DATABASE phone_store;

--Создаем таблицы phone_store.

CREATE TABLE phone_brand (
                             id SERIAL PRIMARY KEY,
                             name VARCHAR(30)
);

CREATE TABLE phone (
                       id SERIAL PRIMARY KEY,
                       model VARCHAR(50) NOT NULL,
                       brand_id INTEGER,
                       FOREIGN KEY (brand_id) REFERENCES phone_brand(id)
);


--Сначала создадим несколько брендов телефонов:
INSERT INTO phone_brand (name) VALUES ('Apple');
INSERT INTO phone_brand (name) VALUES ('Samsung');
INSERT INTO phone_brand (name) VALUES ('Xiaomi');
INSERT INTO phone_brand (name) VALUES ('Huawei');
INSERT INTO phone_brand (name) VALUES ('OnePlus');

--Добавим несколько моделей телефонов. Учтите, что brand_id в таблице phone ссылается на id в таблице phone_brand.
--Поэтому, если, например, Apple имеет id 1, то brand_id для телефонов Apple будет 1.
INSERT INTO phone (model, brand_id) VALUES ('iPhone 13', 1);
INSERT INTO phone (model, brand_id) VALUES ('iPhone 12', 1);
INSERT INTO phone (model, brand_id) VALUES ('Galaxy S21', 2);
INSERT INTO phone (model, brand_id) VALUES ('Galaxy Note 20', 2);
INSERT INTO phone (model, brand_id) VALUES ('Mi 11', 3);
INSERT INTO phone (model, brand_id) VALUES ('Mi 10', 3);
INSERT INTO phone (model, brand_id) VALUES ('P40', 4);
INSERT INTO phone (model, brand_id) VALUES ('P30', 4);
INSERT INTO phone (model, brand_id) VALUES ('8T', 5);
INSERT INTO phone (model, brand_id) VALUES ('7T', 5);
