[databases_basics] .
DataTypes @

Числа .
    |serial|`4байта` - целое с автоинкрементирующемся значением, от 1 до 2147483647
        . тип, который в каждой следующей строке будет иметь на 1 больше.
    |smallint, int2|`2 байта` - целое(-32768/32768)
    |integer, int, int4|`4 байта` - целое(-2147483647/2147483647)
    |bigint, int8|`8 байтов` - целое
    |double precision, float8|`8 байтов` - с плавающей точкой
Строки .
    |character(n), char(n)| - представляет строку из фиксированного количества символов
        . Если мы напишем |{lng:SQL}|"char(20)"|, то создается строка с 20 символами, но если наше содержимое меньше 20 символов, то они заполняются пробелами.
    |character varying(n), varchar(n)| - представляет строку из фиксированного количества символов
        . Если мы задодим |{lng:SQL}|"varchar(20)"|, то создается строка с 20 символами, но она не будет заполняться пробелами, если содержимое меньше.
    |text| - представляет текст произвольной длины.
Время и даты .
    |timestamp| - хранит дату + время
    |date| - хранит дату
    |time| - хранит время
Другое .
    |boolean| - true/false
    |jsonb| - данные произвольного типа в формате JSON