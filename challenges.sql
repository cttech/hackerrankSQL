https://www.hackerrank.com/challenges/challenges

select temp.hacker_id, temp.name, temp.ct from (SELECT @num:=0) n, (select h.hacker_id AS hacker_id,h.name AS name, @num := count(*) AS ct from hackers h, challenges c where h.hacker_id=c.hacker_id  group by h.hacker_id, h.name order by count(*), hacker_id DESC) temp group by (CASE when temp.ct<@num then temp.ct else temp.hacker_id end) having count(*)=1 order by temp.ct DESC, temp.hacker_id;
