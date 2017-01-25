--List all countries in order
SELECT LOWER(country), COUNT(id)
    FROM Address
    GROUP BY country
    ORDER BY COUNT(id) DESC;
    
