-- Calculation the population of the divisions in our dataset

SELECT r.region, r.division, sp.population
FROM REGIONS as r
LEFT JOIN STATE_POP as sp
ON r.state = sp.state;

-- Calculate the average duration in seconds of a triangle-shaped UFO sighting in every state, and view in order of most urban to least urban states.

SELECT us.state, u.urban_index, ROUND(AVG(us.duration_seconds),0) AS "approximate average duration in seconds"
FROM ufo_sightings as us 
LEFT JOIN urbanization as u
ON us.state = u.state
WHERE us.shape IN ('triangle')
GROUP BY us.state, u.urban_index
ORDER BY u.urban_index DESC;