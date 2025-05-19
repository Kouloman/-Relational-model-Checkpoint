# Hotel Management SQL Database

This project provides a relational SQL database schema for managing hotel information, including hotels, room categories, rooms, employees, and hotel types.

## Database Structure

The database consists of the following tables:

- **Hotel**: Stores hotel information.
- **Type**: Defines types or classifications for hotels.
- **Hotel_Type**: Junction table for the many-to-many relationship between hotels and types.
- **Category**: Describes room categories, including price and number of beds.
- **Room**: Contains details about individual rooms, their floor, hotel, and category.
- **Employee**: Stores employee details, their specialty, associated hotel, and leader (manager).

## Table Relationships

- Each **Room** is linked to a **Hotel** and a **Category**.
- Each **Employee** works at a **Hotel** and may have a leader (another employee).
- **Hotel_Type** links hotels and types in a many-to-many relationship.

## Usage

1. Run the SQL script (`bd.sql`) in your preferred SQL database system.
2. The script will create all necessary tables and relationships.
3. You can then insert, update, or query data as needed for hotel management operations.

## Requirements

- SQL database system (e.g., MySQL, PostgreSQL, SQL Server)
- Sufficient privileges to create tables and foreign key constraints

## Author

- Project by GoMyCode student
