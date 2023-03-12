import sqlite3
import subprocess
import mysql.connector
import generic


mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password='regopi09'
)
mycursor = mydb.cursor()

def create_sendbox(name_new_db):
    cmd_str = 'cd /Users/ekaterinaslapnikova/Documents/учеба/научно-исследовательская\ практика/ && mysqldump -u root -p --no-data timetable > schema.sql'
    subprocess.run(cmd_str, shell=True)

    # with open('schema.sql', encoding='utf-8') as f:
    #     read_file = f.readlines()
    create_db_query = 'CREATE DATABASE {}'.format(name_new_db)
    mycursor.execute(create_db_query)
    mydb.commit()
    subprocess.run("mysql -u root -p {} < schema.sql".format(name_new_db), shell=True)

def table_generic(name_table, n):
    if name_table == 'account':
        data = generic.generic_table_account(n)
    elif name_table == 'feedback':
        data = generic.generinc_table_feedaback(n)
    elif name_table == 'id_groups':
        data = generic.generic_table_id_groups(n)
    elif name_table == 'table':
        data = generic.generic_table_timetable(n)
    return data

def generic_data(name_db, name_table, n=1):
    data = table_generic(name_table, n)
    name_db += '.' + name_table

    count = ['%s' for i in range(len(data[0]))]
    count = ', '.join(count)
    mycursor.execute('show columns from {}'.format(name_db))
    name_columns = mycursor.fetchall()
    columns = [name_columns[i][0] for i in range(1,len(name_columns))]
    columns = ', '.join(columns)
    for i in range(len(data)):
        mycursor.execute('INSERT INTO {}({}) VALUES({})'.format(name_db, columns, count), data[i])
        mydb.commit()
    return 'ok'

def delete_data(name_db, name_table):
    name_db += '.' + name_table
    mycursor.execute('DELETE FROM {}'.format(name_db))
    mydb.commit()
    return 'all data has been deleted'

def update_data(name_db, name_table):
    name_db += '.' + name_table
    mycursor.execute('select * from {}'.format(name_db))
    data = mycursor.fetchall()
    max_id = max([data[i][0] for i in range(len(data))])

    update_data = table_generic(name_table, max_id)

    mycursor.execute('show columns from {}'.format(name_db))
    name_columns = mycursor.fetchall()
    columns = [name_columns[i][0] for i in range(1,len(name_columns))]
    

    for i in range(1,len(update_data)):
        new_data = []
        for j in range(len(update_data[i])):
            new_data.append(str(columns[j]) + '="' + str(update_data[i][j]) + '"')
        new_data_str = ', '.join(new_data)
        print(new_data_str)
        mycursor.execute('UPDATE {} SET {} WHERE id={}'.format(name_db, new_data_str, i))
    return 'all data update'


def dump_table(name_db, name_new_db):
    cmd_str = 'cd /Users/ekaterinaslapnikova/Documents/учеба/научно-исследовательская\ практика/ && mysqldump -u root -p {} > schema.sql'.format(name_db)
    subprocess.run(cmd_str, shell=True)

    create_db_query = 'CREATE DATABASE {}'.format(name_new_db)
    mycursor.execute(create_db_query)
    mydb.commit()
    subprocess.run("mysql -u root -p {} < schema.sql".format(name_new_db), shell=True)
    return 'backup'
    
# create_sendbox('newdb')

# print(generic_data('newdb','account', 10))
# print(delete_data('new', 'account'))
# print(update_data('newdb', 'account'))
# print(dump_table('newdb', 'newwww'))