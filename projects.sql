https://www.hackerrank.com/challenges/projects

SELECT MIN(Start_date), MAX(End_date) FROM
(
SELECT Start_Date, End_Date,
@count:=If(@preDate = date_sub(End_Date, interval 1 day), @count, @count+1) AS Row_number,
@preDate:=End_Date
FROM Projects, (Select @count:=0, @preDate:=Null) var
ORDER BY End_Date
) tmp
GROUP BY Row_number
ORDER BY max(End_date)-min(Start_date);
