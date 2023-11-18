import pandas as pd
import mysql.connector
from mysql.connector import Error
import configparser

# Function to read configuration file
def read_config(filename, section):
    parser = configparser.ConfigParser()
    parser.read(filename)

    config = {}
    if parser.has_section(section):
        params = parser.items(section)
        for param in params:
            config[param[0]] = param[1]
    else:
        raise Exception(f'Section {section} not found in the {filename} file')

    return config

# Read database configuration
config = read_config("config.ini", "mysql")

# Prompt user for database, table name, CSV file path, and whether CSV has headers
db_name = input("Enter the database name: ")
table_name = input("Enter the table name: ")
csv_file_path = input("Enter the full path to the CSV file: ")
csv_has_headers = input("Does the CSV file have headers? (yes/no): ").lower() == 'yes'

# Function to create a connection to MySQL
def create_db_connection(host_name, user_name, user_password, db_name):
    connection = None
    try:
        connection = mysql.connector.connect(
            host=host_name,
            user=user_name,
            passwd=user_password,
            database=db_name
        )
        print("MySQL Database connection successful")
    except Error as err:
        print(f"Error: '{err}'")

    return connection

# Function to execute a query
def execute_query(connection, query):
    cursor = connection.cursor()
    try:
        cursor.execute(query)
        connection.commit()
    except Error as err:
        print(f"Error: '{err}'")

# Function to fetch column names from a table
def get_column_names(connection, table_name):
    cursor = connection.cursor()
    cursor.execute(f"SHOW COLUMNS FROM {table_name}")
    columns = cursor.fetchall()
    return [column[0] for column in columns]

# Function to format the value for SQL insertion
def format_sql_value(value):
    if isinstance(value, str):
        return "'" + value.replace("'", "''") + "'"
    elif pd.isna(value):
        return "NULL"
    else:
        return str(value)

# Connect to the specified database
connection = create_db_connection(config['host'], config['user'], config['password'], db_name)

# Get column names from the table
column_names = get_column_names(connection, table_name)

# Prepare the column names for the INSERT query
columns_string = ', '.join(column_names)

# Read CSV file using pandas
if csv_has_headers:
    data = pd.read_csv(csv_file_path)
else:
    data = pd.read_csv(csv_file_path, header=None)
    data.columns = column_names  # Set the column names manually

# Insert data into the table, display progress, and count successful inserts
total_rows = len(data)
successful_inserts = 0
for i, row in enumerate(data.iterrows()):
    values = [format_sql_value(row[1][col]) for col in column_names]
    values_string = ', '.join(values)
    insert_query = f"INSERT INTO {table_name} ({columns_string}) VALUES ({values_string});"
    try:
        execute_query(connection, insert_query)
        successful_inserts += 1
    except Error as err:
        print(f"Error while inserting row {i + 1}: {err}")
    print(f"Row {i + 1}/{total_rows} processed.")

# Calculate and display the count of duplicate entries at the end
duplicate_count = data.duplicated().sum()
print(f"Data load complete. Total rows processed: {total_rows}.")
print(f"Successful inserts: {successful_inserts}.")
print(f"There were {duplicate_count} duplicate rows in the CSV file.")

