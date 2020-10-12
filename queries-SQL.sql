SELECT COUNT(*) AS total 
FROM flights;

SELECT Origin, AVG(ArrDelay) AS prom_arribades, AVG(DepDelay) AS prom_sortides 
FROM flights 
GROUP BY Origin;

SELECT Origin AS origin, colYear, colMonth, AVG(ArrDelay) AS prom_arribades 
FROM flights 
GROUP BY Origin, colYear, colMonth 
ORDER BY Origin, colYear, colMonth;

SELECT usairports.City, flights.colYear, flights.colMonth, AVG(flights.ArrDelay) AS prom_arribades 
FROM flights INNER JOIN usairports ON flights.Origin=usairports.IATA 
GROUP BY Origin, colYear, colMonth 
ORDER BY City, colYear, colMonth;

SELECT UniqueCarrier, colYear, colMonth, SUM(Cancelled) AS total_cancelled 
FROM flights 
GROUP BY UniqueCarrier, colYear, colMonth 
ORDER BY SUM(Cancelled) DESC;

SELECT TailNum, SUM(Distance) AS totalDistance 
FROM flights WHERE TailNum !='' 
GROUP BY TailNum 
ORDER BY SUM(Distance) DESC 
LIMIT 10;

SELECT UniqueCarrier, AVG(ArrDelay) AS avgDelay 
FROM flights 
GROUP BY UniqueCarrier 
HAVING AVG(ArrDelay) > 10 
ORDER BY AVG(ArrDelay) DESC;