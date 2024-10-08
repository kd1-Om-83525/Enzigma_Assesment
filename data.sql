DROP DATABASE IF EXISTS Enzigma;

CREATE DATABASE Enzigma;
use Enzigma;

CREATE TABLE task(
    id INT PRIMARY KEY AUTO_INCREMENT,
    assigned_to VARCHAR(30) NOT NULL,
    status VARCHAR(30) NOT NULL,
    create_time DATETIME DEFAULT CURRENT_TIMESTAMP(),
    due_date DATE NOT NULL,
    priority VARCHAR(10) NOT NULL,
    comment VARCHAR(255)
);


-----------------------------------------------------------------------------------------

SELECT count(*), id, assigned_to, status, due_date, priority, comment FROM task
ORDER BY id
LIMIT 5 OFFSET 1;

SELECT COUNT(*) as totalTasks FROM task;

SELECT id, assigned_to, status, due_date, priority, comment FROM task
ORDER BY id
LIMIT ? OFFSET ?;

------------------------------------------------------------------------------------------


INSERT INTO task(assigned_to, status, due_date, priority, comment) VALUES
("User 1", "In Progress", "2024-09-28", "High", "should be done on time"),
("User 2", "In Progress", "2024-11-15", "Low", "should be done on time"),
("User 3", "Not Started", "2024-09-30", "High", "should be done on time");

INSERT INTO task(assigned_to, status, due_date, priority, comment) VALUES
(?, ?, ?, ?, ?);

-----------------------------------------------------------------------------------------

UPDATE task SET
assigned_to = "User 5",
status = "In Progress",
due_date = "2024-11-11",
priority = "Medium",
comment = "Take your sweet time"
WHERE id = ?;

UPDATE task SET
assigned_to = ?,
status = ?,
due_date = ?,
priority = ?,
comment = ?
WHERE id = ?;

-----------------------------------------------------------------------------------------

DELETE FROM task WHERE id = ?;

-----------------------------------------------------------------------------------------