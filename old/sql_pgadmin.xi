pgAdmin @

psql[] .
SQL_requests[] .
Back [databases_basics] .

Some Notes .
. Каждый раз, при создании новой БД/таблицы, нужно обновлять сервер.

CREATE TABLE category (
    id serial primary key,
    category_name varchar(20)    
);



References @
[#officialDocs] [https://www.pgadmin.org/docs/pgadmin4/latest/getting_started.html]