# Advanced Database Labs: Oracle & SQL Developer with Docker

**This is a hands-on advanced database lab using Oracle, SQL Developer, and Docker. Everything is executed as a single CLI-style workflow.**

---

## Lab Instructions (All-in-One Command Style)

```bash
# Step 1: Enter Docker container
docker exec -it advanced_dbms bash

# Step 2: Connect to Oracle as SYSDBA
sqlplus sys/oracle@XE as sysdba

# Step 3: Switch to pluggable database
ALTER SESSION SET CONTAINER = XEPDB1;
SHOW CON_NAME;
SHOW PDBS;

# Step 4: Create lab user
CREATE USER sandesh_csit IDENTIFIED BY sandesh_csit ACCOUNT UNLOCK;
GRANT CONNECT, RESOURCE, DBA TO sandesh_csit;

# Step 5: Connect as lab user
sqlplus sandesh_csit/sandesh_csit@XEPDB1
SHOW USER;
```

## Schema Overview

**This lab uses a full HR-style Oracle schema** with the following structure:

- **REGIONS** – stores geographic regions.
- **COUNTRIES** – country details linked to regions.
- **LOCATIONS** – office or city locations linked to countries.
- **JOBS** – job titles and salary ranges.
- **DEPARTMENTS** – departments linked to locations and managers.
- **EMPLOYEES** – employee information with links to jobs, departments, and managers.
- **JOB_HISTORY** – tracks historical job assignments of employees.

**Additional Features:**

- Sequences (`regions_seq`, `locations_seq`, `departments_seq`, `employees_seq`) for auto-incrementing IDs.
- Indexes on foreign keys and key columns for better query performance.
- Constraints to ensure data integrity (primary keys, foreign keys, unique and check constraints).

**Note:**  
The SQL script for inserting example values into this schema is saved separately in the repository. This allows for **fast population of tables** without manually typing the insert statements. You can load the data quickly to start practicing queries and advanced operations immediately.
