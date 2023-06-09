-- Insert 4 new users into the database. One should have a NULL role. The other three should be authors.
INSERT INTO users (name, email, role_id) VALUES
                                             ('john', 'john@example.com', 2),
                                             ('lucy', 'lucy@example.com', 2),
                                             ('mark', 'mark@example.com', 2),
                                             ('anna', 'anna@example.com', NULL);

-- Use JOIN, LEFT JOIN, and RIGHT JOIN to combine results from the users and roles tables as we did in the lesson. Before you run each query, guess the expected number of results.
-- JOIN
SELECT *
FROM users
         JOIN roles ON users.role_id = roles.id;

-- LEFT JOIN
SELECT *
FROM users
         LEFT JOIN roles ON users.role_id = roles.id;

-- RIGHT JOIN
SELECT *
FROM users
         RIGHT JOIN roles ON users.role_id = roles.id;

-- Use COUNT and the appropriate join type to get a list of roles along with the number of users that have a given role. Hint: You will also need to use GROUP BY in the query.
SELECT roles.name, COUNT(users.id) as user_count
FROM roles
         LEFT JOIN users ON users.role_id = roles.id
GROUP BY roles.id;
