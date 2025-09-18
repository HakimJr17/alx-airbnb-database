# AirBnB Database Schema

## Overview
This document outlines the database schema for our AirBnB-like application. The schema is defined in the schema.sql file, which contains all the necessary Data Definition Language (DDL) commands to create the tables, relationships, and constraints.

The database is designed with a focus on normalization, data integrity, and security to ensure a robust and efficient foundation for the application.

## Key Entities
The database schema is built around the following core entities:

   1. users: Stores user information, including roles (guest, host, admin).

   2.  properties: Contains details about the properties available for booking.

   3.  bookings: Manages the reservations of properties by guests.

   4.  payments: Records all payment transactions related to bookings.

   5.  reviews: Stores user reviews and ratings for properties.

   6.  messages: Facilitates direct communication between users.

## How to Use this Script
The schema.sql file is designed to be run on a MySQL database. It's idempotent, which means you can run it multiple times without causing errors due to the CREATE TABLE IF NOT EXISTS syntax.

### Prerequisites
A running MySQL database server.

A pre-existing, empty database for the schema (e.g., named airbnb_dev).

### Running from the Command Line
   1.  Open your terminal or command prompt.

   2.  Navigate to the directory where your schema.sql file is located.

   3.  Execute the following command, replacing the placeholders with your actual database credentials and name:

    mysql -u [your_username] -p [your_database_name] < schema.sql

### Running with a GUI Tool
If you are using a graphical tool like MySQL Workbench or DBeaver:

   1.  Connect to your MySQL server.

   2.  Open your schema.sql file.

   3.  Select the airbnb_dev (or your chosen) database.

   4.  Run the script to execute all the CREATE TABLE commands.

## Design Choices
Several key design choices were made to ensure the database is secure and efficient:

### UUIDs for Primary Keys
Instead of using AUTO_INCREMENT integers for our primary keys, we have opted for Universally Unique Identifiers (UUIDs) for user_id, booking_id, payment_id, review_id, and message_id. This decision was made to:

   1.  Prevent Web Scraping: Avoids exposing a predictable, sequential identifier in URLs, making it difficult for malicious actors to systematically scrape all data.

   2.  Enhance Security: Makes it impossible to guess other IDs, reducing the risk of a variety of attacks.

## TIMESTAMP Columns
   1.  TIMESTAMP DEFAULT CURRENT_TIMESTAMP: This column, used for created_at, automatically records the time a new record is created.

   2.  TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP: This column, used for updated_at, automatically records the creation time and then updates every time the record is modified.

## Data Types
   1.  CHAR(36): Used for UUIDs because it's a fixed-length string, which is more efficient for this type of data.

   2.  VARCHAR and TEXT: Used for variable-length strings like names and descriptions, saving storage space.

## Idempotent Scripting
The CREATE TABLE IF NOT EXISTS clause is used on all tables. This ensures that the script can be run repeatedly without causing errors, making it safe for both local development and deployment to different environments.