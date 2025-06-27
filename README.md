# oracle-library-system-22103129.


# 📚 University Library Management System

*Final Assignment – Database (MySQL/Oracle/SQL Server) Course*

---

## 📝 Overview

This project is the final assignment for the Database course, featuring a comprehensive implementation of a **University Library Management System** using **Oracle Database**.

### 🎯 Objectives

This assignment showcases the ability to:

* 🗃️ Design and implement a fully normalized relational database
* ⚙️ Apply advanced SQL and PL/SQL for real-world operations
* 🧠 Enforce business logic using procedures, functions, and triggers
* 🔐 Implement robust database security and performance optimization

---

## ✅ Learning Outcomes

* **Database Design**: ER modeling and normalization (up to 3NF)
* **SQL Expertise**: Applied DDL, DML, DCL, TCL operations
* **PL/SQL Programming**: Developed procedures, functions, triggers
* **Database Administration**: User roles, indexing, and performance tuning

---

## 📌 Completed Assignment Sections

### 📂 Part 1: Database Design & Setup *(15 Marks)*

* ✔️ **Task 1.1**: Created essential tables: `BOOKS`, `MEMBERS`, `TRANSACTIONS`
* ✔️ **Task 1.2**: Inserted sample data:

  * 20 books (various categories)
  * 15 members (students, faculty, staff)
  * 25 transactions (returned, overdue, pending)

---

### 🔍 Part 2: Basic SQL Operations *(20 Marks)*

* ✔️ **Task 2.1**: Retrieval queries (book availability, overdue members, etc.)
* ✔️ **Task 2.2**: Data manipulation (fine updates, new member insertion, archiving)

---

### 🧠 Part 3: Advanced SQL Queries *(25 Marks)*

* ✔️ **Task 3.1**: Implemented `INNER`, `LEFT`, `SELF`, and `CROSS` joins
* ✔️ **Task 3.2**: Designed subqueries for fine calculation, borrowing behavior
* ✔️ **Task 3.3**: Used aggregate & window functions for trends and ranking

---

### ⚙️ Part 4: PL/SQL Programming *(25 Marks)*

* ✔️ **Task 4.1**: `ISSUE_BOOK` procedure with availability validation and record insertion
* ✔️ **Task 4.2**: `CALCULATE_FINE` function with ₹5/day overdue calculation
* ✔️ **Task 4.3**: Trigger to update `available_copies` on book return

---

### 🔒 Part 5: Database Administration *(15 Marks)*

* ✔️ **Task 5.1**: Role-based user management (`librarian`, `student_user`)
* ✔️ **Task 5.2**: Indexing for query optimization and performance tuning

---

## 🛠 Technologies Used

| Component           | Technology               |
| ------------------- | ------------------------ |
| Database            | Oracle Database          |
| Query Language      | SQL (DDL, DML, DCL, TCL) |
| Procedural Language | PL/SQL                   |
| Admin Tools         | Oracle DB Tools          |

---

## ✨ Key Features

### 📖 Book Management

* Store metadata (title, author, publisher, ISBN)
* Track inventory and availability
* Categorize books by subject

### 👤 Member Management

* Manage students, faculty, and staff profiles
* Maintain full contact and membership info

### 🔄 Transaction Management

* Track book borrowing, returning, and due dates
* Auto-calculate and update fines
* Monitor book status: Returned, Pending, Overdue

### 📊 Advanced Analytics & Querying

* Identify:

  * Overdue members
  * Most borrowed books
  * Members with consistent delays
* Subqueries for pattern detection
* Aggregate + window functions for trends

### 🔁 Business Logic with PL/SQL

#### 1. `ISSUE_BOOK` Procedure

* Validates book availability
* Creates transaction records
* Updates available stock
* Includes error handling

#### 2. `CALCULATE_FINE` Function

* Input: transaction ID
* Logic: ₹5 per day after due date
* Output: Total fine amount

#### 3. `UPDATE_AVAILABLE_COPIES` Trigger

* Fires on book return
* Automatically updates `available_copies`
* Ensures real-time inventory consistency

### 🔐 Administration & Security

* **Roles:**

  * `librarian`: Full privileges (DML, DDL)
  * `student_user`: Read-only access to `BOOKS` table
* **Security Measures:**

  * Role-based access control
  * Indexing on foreign keys and high-access columns
  * Query performance analysis using execution plans

---

## 📁 Submission Structure

```
oracle-library-system-[student-id]/
│
├── README.md             → Documentation (this file)
│
└── sql/
    ├── setup.sql         → Table creation + sample data (DDL + DML)
    ├── queries.sql       → SQL queries (Parts 2 & 3)
    ├── plsql.sql         → Procedures, functions, triggers (Part 4)
    └── admin.sql         → User management + indexing (Part 5)
```

---

## 🚀 How to Execute

1. **Connect to Oracle DB:**

   ```bash
   sqlplus username/password@database
   ```

2. **Run files sequentially:**

   ```sql
   @sql/setup.sql
   @sql/queries.sql
   @sql/plsql.sql
   @sql/admin.sql
   ```

---

## 🗂 Schema Overview

### `BOOKS`

* Fields: `book_id`, `title`, `author`, `publisher`, `publication_year`, `isbn`, `category`, `total_copies`, `available_copies`, `price`

### `MEMBERS`

* Fields: `member_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `membership_date`, `membership_type`

### `TRANSACTIONS`

* Fields: `transaction_id`, `member_id`, `book_id`, `issue_date`, `due_date`, `return_date`, `fine_amount`, `status`

---

## ✅ Key Functional Requirements Met

* 📚 20 books (diverse categories)
* 👥 15 members (students, faculty, staff)
* 🔄 25 transactions with varied statuses
* 💸 Fine logic: ₹5/day after due date
* 🧾 Queries for:

  * Book availability
  * Top borrowed titles
  * Member fine tracking
* ⚙️ Full PL/SQL implementation for automation
