## 🛢 SQL Server Simple Academy Database

This repository contains a small project aimed at demonstrating the use of basic instructions in SQL Server. The goal is to provide a starting point for those learning about relational databases and the SQL language.

### Project Description

The project consists of a set of SQL scripts covering:

- Table creation.
- Data insertion.
- Basic and advanced queries.
- Use of constraints and relationships.

These scripts were developed to reinforce fundamental SQL Server concepts in a practical and accessible way.

### Requirements

To run the scripts in this project, you will need:

1. **Microsoft SQL Server**
   - You can download the free version [SQL Server Express](https://www.microsoft.com/en-us/sql-server/sql-server-downloads).
2. **SQL Server Management Studio (SSMS)** or any other compatible SQL client.

### Database Structure

#### Student

| Field       | Type                       |
|-------------|----------------------------|
| Id          | UNIQUEIDENTIFIER (PK)     |
| Name        | NVARCHAR(120)             |
| Email       | NVARCHAR(180)             |
| Document    | NVARCHAR(20)              |
| Phone       | NVARCHAR(20)              |
| Birthdate   | DATETIME                  |
| CreateDate  | DATETIME (DEFAULT)        |

---

#### Author

| Field       | Type                       |
|-------------|----------------------------|
| Id          | UNIQUEIDENTIFIER (PK)     |
| Name        | NVARCHAR(80)              |
| Title       | NVARCHAR(80)              |
| Image       | NVARCHAR(1024)            |
| Bio         | NVARCHAR(2000)            |
| Url         | NVARCHAR(450)             |
| Email       | NVARCHAR(160)             |
| Type        | TINYINT                   |

---

#### Career

| Field             | Type                  |
|--------------------|-----------------------|
| Id                | UNIQUEIDENTIFIER (PK) |
| Title             | NVARCHAR(160)         |
| Summary           | NVARCHAR(2000)        |
| Url               | NVARCHAR(1024)        |
| DurationInMinutes | INT                   |
| Active            | BIT                   |
| Featured          | BIT                   |
| Tags              | NVARCHAR(160)         |

---

#### Category

| Field        | Type                  |
|--------------|-----------------------|
| Id           | UNIQUEIDENTIFIER (PK) |
| Title        | NVARCHAR(160)         |
| Url          | NVARCHAR(1024)        |
| Summary      | NVARCHAR(2000)        |
| Order        | INT                   |
| Description  | TEXT                  |
| Featured     | BIT                   |

---

#### Course

| Field            | Type                       |
|-------------------|----------------------------|
| Id               | UNIQUEIDENTIFIER (PK)     |
| Tag              | NVARCHAR(20)              |
| Title            | NVARCHAR(160)             |
| Summary          | NVARCHAR(2000)            |
| Url              | NVARCHAR(1024)            |
| Level            | TINYINT                   |
| DurationInMinutes| INT                       |
| CreateDate       | DATETIME                  |
| LastUpdateDate   | DATETIME                  |
| Active           | BIT                       |
| Free             | BIT                       |
| Featured         | BIT                       |
| AuthorId         | UNIQUEIDENTIFIER (FK)    |
| CategoryId       | UNIQUEIDENTIFIER (FK)    |
| Tags             | NVARCHAR(160)             |

---

#### CareerItem

| Field        | Type                       |
|--------------|----------------------------|
| CareerId     | UNIQUEIDENTIFIER (FK)     |
| CourseId     | UNIQUEIDENTIFIER (FK, PK) |
| Title        | NVARCHAR(160)             |
| Description  | TEXT                      |
| Order        | TINYINT                   |

---

#### StudentCourse

| Field           | Type                       |
|------------------|----------------------------|
| CourseId        | UNIQUEIDENTIFIER (FK, PK) |
| StudentId       | UNIQUEIDENTIFIER (FK, PK) |
| Progress        | TINYINT                   |
| Favorite        | BIT                       |
| StartDate       | DATETIME                  |
| LastUpdateDate  | DATETIME (DEFAULT)        |

### How to Use

1. Clone this repository:
   ```bash
   git clone https://github.com/nicolasteofilo/sqlserver-academy-database.git
   ```

2. Execute the SQL scripts in the suggested order:
   - `create-database.sql`
   - `inserts/1. category.sql`
   - `inserts/2. student.sql`
   - `inserts/3. author.sql`
   - `inserts/4. course.sql`
   - `inserts/5. career.sql`
   - `inserts/6. career-item.sql`
   - `inserts/7. student-course.sql`

    Remembering that the scripts are just examples and you can add more data, remove it and so on.

3. How to run stored procedures
   > Stored procedures are SQL commands stored in the database to perform specific operations, improving performance, reusability, and security.

   In the project there are two stored procedures already created, but you can create another one, to access it go to the `procedures` folder, to use them just run it like this:
   
   - `EXEC spRemoveStudent 'VALID ID FROM [Student] table'`" To remove one student
   - `EXEC spStudentProgress 'VALID ID FROM [Student] table'`: To get the student's progress in the courses linked to him/her

### Contribution

Contributions are welcome! If you have suggestions for improvements or want to add new examples, feel free to open a pull request.

### Contact

If you have questions or feedback, feel free to reach out:

- **Author:** Nicolas Teófilo
- **GitHub:** [@nicolasteofilo](https://github.com/nicolasteofilo)