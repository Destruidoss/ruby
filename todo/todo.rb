require 'pg'

begin
    CONN = PG::connect(
        dbname: 'tododb',
        user: 'joaonatal',
        password: '123456',
        host: 'localhost'
    )

    puts "conectado"
# def sql_create_table(tableone)
#     tableone.exec("CREATE TABLE IF NOT EXISTS Task (
#     id SERIAL PRIMARY KEY,
#     description VARCHAR(100),
#     duedate DATE,
#     importance,
#     repeat,) ")

#CONN.exec(sql_create_table)


CONN.close
