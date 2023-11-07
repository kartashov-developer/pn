SQL_requests @

[psql.xi] .
[pgAdmin.xi] .

psql .
| psql -U postgres

DATABASE & USER .
  USER .
    Creating User .
    | CREATE USER test_user WITH PASSWORD 'qwerty'; -- пользователь создается именно в СУБД
    Privileges to User .
    | GRANT ALL PRIVILEGES ON DATABASE test_db TO test_user;
    . По умолчанию доступ к базе имеет только `OWNER` и супер-администратор СУБД. Всем остальным пользователям доступ нужно добавлять явным образом.
  DATABASE .
    Creating DB .
    | CREATE DATABASE test_db OWNER test_user;
    . Любая база должна быть создана, прежде, чем к ней можно будет подключиться.
    . Пользователь, указанный, как `OWNER` будет иметь максимальные права доступа к этой БД.
    Delete DB .
    | DROP DATABASE test_db;

TABLES .

    Creating Table .
        | CREATE TABLE students (
        |    id serial PRIMARY KEY,
        |    name varchar(80),
        |    age integer
        | );
    Deleting Table .
        | DROP TABLE {table name};
    Adding lines to table .
    | INSERT INTO students (name, age) VALUES
    | ('Anna', 25),
    | ('Maria', 23),
    | ('Roman', 28);
    . Поле `id` существует, но указывать его значение не обязательно, так тип данных |serial| позволяет ему заполняться автоматически.
    |ON DELETE CASCADE| - жесткая связь.
    Adding columns to table .
    | ALTER TABLE {database} ADD COLUMN {column with type and key};
    | ALTER TABLE {database}
    | ADD {column title} {column type};
    Editing columns in table .
    | ALTER TABLE {database}
    | ALTER COLUMN {column title} TYPE {column type};
    Deleting columns in table .
    | ALTER TABLE {database} DROP COLUMN {column name};
    | ALTER TABLE {database} DROP COLUMN {column name} CASCADE;
    |CASCADE| - удаление всех зависящих от этого тсолбца объектов.

DATA EXTRACTION & DATA CHANGING & DATA DELETING .
    DATA EXTRACTION .
    | SELECT * FROM students;
    | SELECT name, age FROM students;
    | SELECT * FROM students WHERE age < 18;
    | SELECT * FROM students WHERE age > 25 AND id >= 3;
    | SELECT * FROM students ORDER BY age ASC;
    | SELECT AVG(age) AS "Средний возраст" FROM students;
    | SELECT COUNT(*) FROM users WHERE is_admin = false;
    | SELECT SUM(id) FROM users WHERE is_admin = false;
    | SELECT  FROM users WHERE is_admin = false;
      . С помощью `SELECT` можно не просто вытаскивать данные, но и проводить фильтрацию, сортировать и проводить несложные агрегации.
      . |SELECT * FROM ...| - выбрать все из `таблица`
      . |SELECT * FROM .. WHERE ...| - выбрать все из `таблица` где `условие`
      . |ORDER BY ...| - сортировать по `столбец`
        . |DESC| - descending order(убывающий)
        . |ASC| - ascending order(возрастающий)
      . |COUNT(*)| - посчитать вытащенные `условия`
      . |SUM(id)| - сумма `id` из `условия`
      . |AVG(id)| - среднее `id` из `условия`
    DATA CHANGING .
    | UPDATE students SET age = 26 WHERE name = 'Anna';
    . С помощью `UPDATE` можно изменять любые данные в таблице.
    . Использование `WHERE` не обязательно, хотя и крайне рекомендуется. Без `WHERE` будут обновлены все существующие строчки в таблице.
    DATA DELETING .
    | DELETE FROM students WHERE id = 1; -- может использоваться условие
    | DELETE FROM students WHERE name = 'Anna';
    . Чаще всего удаление происходит по `id`.
    . Возможно использование `DELETE` вообще без `WHERE`, в таком случае будут удалены вообще все данные в таблице.


Example[] .



