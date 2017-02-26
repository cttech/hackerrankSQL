https://www.hackerrank.com/challenges/earnings-of-employees

SELECT (MONTHS * SALARY) AS E, COUNT(*) FROM EMPLOYEE GROUP BY E HAVING E = MAX(MONTHS * SALARY) ORDER BY E DESC LIMIT 1
