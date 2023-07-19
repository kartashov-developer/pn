psql @

SQL_requests[] .
pgAdmin[] .
Back [databases_basics]

Useful Commands .
    Info .
        |{lng:SQL}"\?"| - помощь
        |{lng:SQL}"\l"| - базы
        |{lng:SQL}"\du"| -  посмотреть пользователей
        |{lng:SQL}"\c {DATABASE} {USERNAME}"| - войти в БД 
    Problems .
        |{lng:SQL}
        | psql -d postgres -U postgres -p 5432 -h localhost
        . psql: error: connection to server on socket "/tmp/.s.PGSQL.5432" failed: FATAL:  database "dev" does not exist