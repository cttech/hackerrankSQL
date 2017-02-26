https://www.hackerrank.com/challenges/contest-leaderboard

SELECT H.hacker_id, H.name, SUM(scr) as total FROM Hackers H, (SELECT s2.hacker_id as hac_id, s2.challenge_id as cha_id, MAX(s2.score) scr FROM Submissions s2 GROUP BY s2.hacker_id, s2.challenge_id having scr > 0) as chart1 WHERE H.hacker_id = hac_id GROUP BY H.hacker_id ORDER BY total DESC, H.hacker_id
