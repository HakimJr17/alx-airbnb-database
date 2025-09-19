# Seeding the Database with Sample Data

This project includes a seed.sql file to populate the database with sample data. This is essential for testing and development, as it allows you to work with a realistic dataset without having to manually insert every record.

## What this script does:
   1. Inserts sample users into the users table.

   2. Inserts a sample property and assigns it to a user.

   3. Creates sample bookings, payments, and reviews that are correctly linked to the users and properties via foreign keys.

   4. Adds sample messages to demonstrate the sender-recipient relationship.

How to use the script:
   1.  Ensure your tables are created: You must have already run the schema.sql script to create all the tables in your database.

   2.  Run the seed_data.sql file: Use the MySQL command-line client to execute the script against your database.

   3.  mysql -u your_username -p your_database_name < seed_data.sql

Confirm the data: You can run a SELECT statement in your MySQL client to verify that the data has been inserted correctly.

SELECT * FROM users;
SELECT * FROM properties;
