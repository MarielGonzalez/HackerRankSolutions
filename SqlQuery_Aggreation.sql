--Exercise; Weather Observation Station 20/ Aggregation/ Intermediate 
--Description of the query; A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places.


--My own solution was this: 

SELECT CAST(MAX(MEDIAN.LAT_N) AS DECIMAL (10,4))
FROM
   (SELECT TOP(((SELECT COUNT(LAT_N) FROM STATION) + 1)/2) LAT_N FROM STATION ORDER BY LAT_N ASC) AS MEDIAN





-- Another alternative I found for @MIcrosoft that need to further study; 
select distinct
  cast(
     round(
       PERCENTILE_DISC (.5) WITHIN GROUP (order by lat_n) OVER()
     ,4) 
   as decimal(16,4))
from station


