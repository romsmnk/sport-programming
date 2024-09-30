-- PostgreSQL

-- problem: 1517. Find Users With Valid E-Mails

-- Runtime 420 ms Beats 55.13%
-- Memory 0.00 MB Beats 100.00%

SELECT
    *
FROM
    Users
WHERE
    mail ~ '^[a-zA-Z]+[a-zA-Z0-9_.-]*@leetcode\.com$';

