require 'pg'

begin
    CONN = PG::connect(
        dbname: 'todo_db',
        user: 'joaonatal',
        password: '123456',
        host: 'localhost'
    )

def sql_create_table(tableone)
    tableone.exec("CREATE TABLE IF NOT EXISTS Task (
    id SERIAL PRIMARY KEY,
    description VARCHAR(100),
    duedate DATE,
    importance,
    repeat,) ")

CONN.exec(sql_create_table)


CONN.close
