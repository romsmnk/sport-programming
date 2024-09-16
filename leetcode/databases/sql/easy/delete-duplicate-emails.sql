-- Runtime 760 ms Beats 75.08%
-- Memory 0.00 MB Beats 100.00%

-- problem name: 196. Delete Duplicate Emails

DELETE    p1
FROM      Person p1, Person p2
WHERE     p1.Email = p2.Email AND p1.id > p2.id;
