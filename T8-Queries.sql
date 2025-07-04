use companydb;

-- 1. Stored Procedure: Get Employee Details by Branch

DELIMITER $$

CREATE PROCEDURE GetEmployeesByBranch(IN input_branch_id INT)
BEGIN
    SELECT emp_id, first_name, last_name, salary
    FROM employee
    WHERE branch_id = input_branch_id;
END$$

DELIMITER ;

-- Example: Call the procedure
CALL GetEmployeesByBranch(3);

-- 2. Stored Function: Calculate Bonus Based on Salary

DELIMITER $$

CREATE FUNCTION CalculateBonus(empSalary DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE bonus DECIMAL(10,2);
    
    IF empSalary >= 70000 THEN
        SET bonus = empSalary * 0.10;
    ELSE
        SET bonus = empSalary * 0.05;
    END IF;
    
    RETURN bonus;
END$$

DELIMITER ;

-- Example: Use function
SELECT emp_id, first_name, salary, CalculateBonus(salary) AS bonus
FROM employee;
