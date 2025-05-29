# 📚 Student Habits and Academic Performance - SQL Project

## 📆 Overview
This project explores the relationship between students' study habits and their academic performance using structured query language (SQL). It simulates real-world educational data and provides practice for performing data modeling, insertion, transformation, and analysis with relational databases.

## 📂 Dataset Description
The project uses three relational tables:

### students
- `student_id` (Primary Key)
- `age`
- `gender`
- `major`
- `email` (Unique)

### performance
- `student_id` (Foreign Key)
- `exam_score`

### habits
- `student_id` (Foreign Key)
- `study_hours_per_day`
- `screen_time`
- `study_environment`

## 📊 Objectives
- Design and create relational tables with constraints
- Populate tables with realistic student data
- Execute SQL queries to retrieve insights
- Use joins, groupings, subqueries, and string functions
- Create and use SQL views

## 🔢 SQL Features Practiced
- `CREATE TABLE`, `ALTER TABLE`
- `PRIMARY KEY`, `FOREIGN KEY`, `UNIQUE`
- `INSERT`, `UPDATE`, `DELETE`
- `SELECT`, `JOIN`, `GROUP BY`, `ORDER BY`
- `AGGREGATE FUNCTIONS`, `SUBQUERIES`, `VIEWS`

## 📁 Project Structure
```
student-habits-academic-performance/
|
├── data/
│   ├── students.csv
│   ├── performance.csv
│   └── habits.csv
│
├── scripts/
│   ├── table_creation.sql
│   ├── data_insertion.sql
│   ├── constraints.sql
│   ├── queries.sql
│   └── views.sql
│
├── docs/
│   └── project queries.pdf
│
├── README.md
└── PROJECT_REQUIREMENTS.md
```

## ⚖️ Tools Used
- PostgreSQL / MySQL / SQLite
- DBeaver / pgAdmin / MySQL Workbench
- Git & GitHub

## 🔄 Sample Use-Cases
- Find students older than average
- Identify top performers
- Examine screen time across study environments
- View female students majoring in Business

## ✨ Optional Extensions
- Visualize data insights with Python (pandas, seaborn) or Power BI
- Build a CRUD-based web UI with Flask/Node.js
- Design an ERD diagram for data relationships

## 📅 License
This project is open-source and free to use under the MIT License.

---
Made with ❤️ for data enthusiasts and SQL learners.