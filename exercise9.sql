

SELECT distinct Address.city 
    FROM Address
    WHERE Address.country in ("Canada", "Austria", "Isle of Man", "Ireland", "Japan");
    