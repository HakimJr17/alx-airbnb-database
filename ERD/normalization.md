# Normalization
Below is an explanation of the process followed to organize our database and make sure its structure is both logical and efficient. The goal was to reduce redundancy—meaning the team didn't want to store the same information in multiple places—and to improve data integrity, which ensures our data is accurate and consistent. To do this, a series of steps called "Normal Forms" were followed.

Our database design successfully achieves the first three normal forms.

## 1. First Normal Form (1NF)
The first step, or First Normal Form (1NF), has a simple rule: each cell in a table has to contain only a single value. It also means there should be no repeating groups of information within a single table.

### How this was achieved:

Separated Entities: Instead of trying to put all the information into one giant table, the data was broken down into distinct, logical entities like User, Property, Booking, and Payment. For example, all user information is in the User table, and all property information is in the Property table.

Atomic Values: Every column in our tables is designed to hold a single value. For instance, the User table has a first_name and a last_name column, not a single name column with multiple values. This ensures that the data can be easily sorted, filtered, and searched for specific information.

## 2. Second Normal Form (2NF)
The Second Normal Form (2NF) has a slightly more complex rule: a table must first be in 1NF, and all non-key attributes have to be fully dependent on the primary key. This rule is mainly for tables with a composite primary key (a key made up of two or more columns), but the design satisfies it by default.

### How this was achieved:

Full Dependency: The design ensures that every attribute in a table is directly related to that table's primary key. For example, in the Review table, both the rating and comment fields are entirely dependent on the review_id (the primary key), not just a part of a composite key.

Logical Grouping: By separating data into logical entities (Booking and Payment), the design avoided placing attributes that don't belong together in a single table, which is a common way to violate 2NF.

## 3. Third Normal Form (3NF)
The Third Normal Form (3NF) is the final, most important step for our database. Its rule is: a table must be in 2NF, and there should be no transitive dependencies. A transitive dependency occurs when a non-key attribute depends on another non-key attribute, rather than directly on the primary key. The rule is often summarized as: "a non-key attribute must depend on the key, the whole key, and nothing but the key."

### How this was achieved:

Eliminating Dependencies: This is the most crucial part of the design. Attributes that were not directly dependent on a table's primary key were identified and separated. For example, if a property_address field were in the User table, it would be a transitive dependency because it depends on the property_id, not the user_id. By placing all property-related information in the Property table, this issue was eliminated.

Isolated Facts: Each of the tables is designed to contain "facts about the key." The User table contains facts only about the user, the Property table contains facts only about the property, and so on. This clean separation ensures there is no redundant data.

By following these steps, the database is not only well-organized but also efficient, reliable, and easy to maintain.