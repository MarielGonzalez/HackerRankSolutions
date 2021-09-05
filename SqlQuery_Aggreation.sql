--Exercise; Weather Observation Station 20/ Aggregation/ Intermediate 
--Description of the query; A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places.
--Idea 1st
SELECT TOP 1 M.LAT_N FROM
(SELECT TOP(((SELECT COUNT(LAT_N) FROM STATION) + 1)/2) LAT_N FROM STATION ORDER BY LAT_N DESC) AS M



