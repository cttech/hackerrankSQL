https://www.hackerrank.com/challenges/weather-observation-station-17

SELECT ROUND(MIN(LONG_W), 4) FROM (SELECT * FROM STATION AS T WHERE T.LAT_N > 38.7780 ORDER BY T.LAT_N ASC LIMIT 1) AS T2
