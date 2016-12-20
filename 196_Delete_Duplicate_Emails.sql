# Write a SQL query to delete all duplicate email entries in a table named Person, 
# keeping only unique emails based on its smallest Id.
#+----+------------------+
#| Id | Email            |
#+----+------------------+
#| 1  | john@example.com |
#| 2  | bob@example.com  |
#| 3  | john@example.com |
#+----+------------------+

DELETE p1
FROM Person p1, Person p2
WHERE p1.Id > p2.Id
AND p1.Email = p2.Email;