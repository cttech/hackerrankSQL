https://www.hackerrank.com/challenges/weather-observation-station-18

SELECT ROUND(ABS((MAX(LONG_W) - MAX(LAT_N)))+ABS((MIN(LAT_N)-MIN(LONG_W))),4) FROM STATION;
