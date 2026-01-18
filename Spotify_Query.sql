--Data Analysis -- Spotify

--Q1. Retrieve the names of all tracks that have more than 1 billion streams.

SELECT Track FROM spotify
WHERE Stream >= 1000000000;

--Q2. Find the top 5 tracks with the highest energy values.
SELECT DISTINCT Track , Energy FROM spotify
ORDER BY Energy DESC
LIMIT 5;

--Q3. List all albums along with their respective artists.
SELECT Album , Artist FROM Spotify; 

--Q4. Get the total number of comments for tracks where licensed = TRUE.
SELECT 
SUM(Comments) AS total_comments 
FROM spotify
WHERE licensed = TRUE;

--Q5. Find all tracks that belong to the album type single.
SELECT Track  FROM spotify
WHERE Album_type LIKE 'single';

--Q6. Count the total number of tracks by each artist.
SELECT 
	DISTINCT Artist , --1
	COUNT(Track) AS total_number_of_tracks --2
FROM spotify
GROUP BY 1
ORDER BY 2 DESC;

--Q7. Calculate the average danceability of tracks in each album.
SELECT 
	Track ,
	AVG(Danceability) as avg_danceability,
	Album
FROM spotify
GROUP BY 1 ,3
ORDER BY 3 DESC;

--Q8. List all tracks along with their views and likes where official_video = TRUE.
SELECT 
	Track,
	SUM(Views) AS total_views,
	SUM(Likes) AS total_Likes
FROM spotify
WHERE official_video = 'TRUE'
GROUP BY 1
ORDER BY 2  DESC;


--Q9. For each album, calculate the total views of all associated tracks.
SELECT 
	Track,
	Album,
	SUM(Views) AS total_views
FROM spotify
GROUP BY 1 , 2
ORDER BY 3 DESC;

--Q10. Retrieve the track names that have been streamed on Spotify more than YouTube.
SELECT track,
FROM spotify
GROUP BY track
HAVING
  SUM(CASE WHEN most_playedon = 'Spotify' THEN stream ELSE 0 END)
>
  SUM(CASE WHEN most_playedon = 'YouTube' THEN stream ELSE 0 END);

--Q11. Find the top 3 most viewed tracks for each artist using windows function
WITH ranking_artist
AS(
SELECT 
	Artist,
	Track,
	SUM(Views) AS total_views,
	DENSE_RANK() OVER(PARTITION BY Artist ORDER BY  SUM(Views) DESC) AS rank
FROM Spotify
GROUP BY 1 , 2
ORDER BY 1 , 3 DESC
)
SELECT * FROM ranking_artist
WHERE rank <= 3;

--Q12. Write a query to find tracks where the liveness score is above the average.
SELECT Track , liveness FROM Spotify
WHERE liveness > (SELECT AVG(liveness) FROM spotify);

--Q13 Use a WITH clause to calculate the difference between the highest and lowest energy values for tracks in each album.
WITH t1 
AS(
SELECT 
	Album,
	MAX(Energy) AS highest_energy ,
	MIN(Energy) AS lowest_energy
FROM spotify
GROUP BY 1 
)
SELECT 
	Album ,
	highest_energy - lowest_energy AS energy_difference
FROM t1;

--Q14. Find tracks where the energy-to-liveness ratio is greater than 1.2.
SELECT 
	Track ,
	energy/liveness AS energy_liveness_ratio
FROM Spotify
WHERE energy/liveness > 1.2

--Q15. Calculate the cumulative sum of likes for tracks ordered by the number of views, using window functions.
SELECT 
	Track ,
	SUM(Likes) OVER(ORDER BY Views DESC) AS cumulative_likes
FROM spotify;