https://www.hackerrank.com/challenges/harry-potter-and-wands

select w.id, p.age, w.coins_needed, w.power from Wands as w join Wands_Property as p on (w.code = p.code) where p.is_evil = 0 and w.coins_needed = (select min(coins_needed) from Wands as w1 join Wands_Property as p1 on (w1.code = p1.code) where w1.power = w.power and p1.age = p.age) order by w.power desc, p.age desc
