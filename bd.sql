-- Table: Hotel
CREATE TABLE Hotel (
    Hotel_Id INT PRIMARY KEY,
    Hotel_name VARCHAR(100)
);

-- Table: Type
CREATE TABLE Type (
    Type_Id INT PRIMARY KEY,
    Type_Name VARCHAR(100)
);

-- Table de liaison: Hotel_Type
CREATE TABLE Hotel_Type (
    Hotel_Id INT,
    Type_Id INT,
    PRIMARY KEY (Hotel_Id, Type_Id),
    FOREIGN KEY (Hotel_Id) REFERENCES Hotel(Hotel_Id),
    FOREIGN KEY (Type_Id) REFERENCES Type(Type_Id)
);

-- Table: Category
CREATE TABLE Category (
    Category_Id INT PRIMARY KEY,
    Category_Name VARCHAR(100),
    Price DECIMAL(10,2),
    Beds_numbers INT
);

-- Table: Room
CREATE TABLE Room (
    Room_Id INT PRIMARY KEY,
    Floor INT,
    Hotel_Id INT,
    Category_Id INT,
    FOREIGN KEY (Hotel_Id) REFERENCES Hotel(Hotel_Id),
    FOREIGN KEY (Category_Id) REFERENCES Category(Category_Id)
);

-- Table: Employee
CREATE TABLE Employee (
    Employee_Id INT PRIMARY KEY,
    Employee_Name VARCHAR(100),
    Employee_Speciality VARCHAR(100),
    Hotel_Id INT,
    Leader_Id INT,
    FOREIGN KEY (Hotel_Id) REFERENCES Hotel(Hotel_Id),
    FOREIGN KEY (Leader_Id) REFERENCES Employee(Employee_Id)
);
