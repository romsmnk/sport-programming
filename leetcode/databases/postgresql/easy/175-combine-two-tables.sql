-- PostgreSQL
-- Problem: 175. Combine Two Tables

-- Runtime 243 ms Beats 83.27%
-- Memory 0.00 MB Beats 100.00%

SELECT
    firstName,
    lastName,
    city,
    state
FROM
    Person
LEFT JOIN
    Address
ON
    Person.personId = Address.personId;
