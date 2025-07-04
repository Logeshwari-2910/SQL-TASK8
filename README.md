

### **Objective:**

This task introduces reusable SQL blocks through **stored procedures** and **user-defined functions**. These allow better modularity, reusability, and encapsulation of logic in SQL workflows.

---

### **What Was Done:**

* **Stored Procedure (`GetEmployeesByBranch`)**

  * Accepts a branch ID as input.
  * Returns a list of employees in that branch.
  * Demonstrates use of `CREATE PROCEDURE`, `IN` parameter, and conditional data access.

* **Stored Function (`CalculateBonus`)**

  * Accepts salary as input.
  * Returns a bonus based on salary threshold.
  * Demonstrates `CREATE FUNCTION`, return type, and conditional logic using `IF`.

---

### **Tools Used:**

* MySQL Workbench 

---

### **Key Concepts Covered:**

* `CREATE PROCEDURE`, `CALL`
* `CREATE FUNCTION`, `RETURN`
* Parameters and conditional logic
* Applying functions within `SELECT` queries

---
