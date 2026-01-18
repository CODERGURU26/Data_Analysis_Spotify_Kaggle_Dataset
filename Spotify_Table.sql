--Advanced SQL Project - Spotify
DROP TABLE IF EXISTS spotify;
CREATE TABLE spotify(
	Artist	VARCHAR(255),
	Track	VARCHAR(255),
	Album	VARCHAR(255),
	Album_type	VARCHAR(55),
	Danceability	FLOAT,
	Energy	FLOAT,
	Loudness	FLOAT,
	Speechiness	FLOAT,
	Acousticness	FLOAT,
	Instrumentalness	FLOAT,
	Liveness	FLOAT,
	Valence	FLOAT,
	Tempo	FLOAT,
	Duration_min FLOAT,	
	Title	VARCHAR(255),
	Channel	VARCHAR(255),
	Views	BIGINT,
	Likes	BIGINT,
	Comments	BIGINT,
	Licensed	BOOLEAN,
	official_video	BOOLEAN,
	Stream	BIGINT,
	EnergyLiveness FLOAT,	
	most_playedon VARCHAR(55)
);

--EDA(Exploratory Data Analysis)
SELECT COUNT(*) FROM spotify;

SELECT COUNT(DISTINCT artist) FROM spotify;

SELECT COUNT(DISTINCT track) FROM spotify; 

SELECT COUNT(DISTINCT Album) FROM spotify;

SELECT DISTINCT Album_type FROM spotify;

SELECT MAX(	Danceability) FROM spotify;

SELECT MIN(	Danceability) FROM spotify;

DELETE  FROM spotify
WHERE Danceability = 0;

SELECT MAX(Energy) FROM spotify;

SELECT MIN(Energy) FROM spotify;

SELECT MAX(Loudness) FROM spotify;

SELECT MIN(Loudness) FROM spotify;

SELECT MAX(Speechiness) from spotify;

SELECT MIN(Speechiness) from spotify;

SELECT MAX(Acousticness) FROM spotify;

SELECT MIN(Acousticness) FROM spotify;

SELECT MAX(Instrumentalness) FROM spotify;

SELECT MIN(Instrumentalness) FROM spotify;

DELETE FROM spotify
WHERE Instrumentalness = 0;

SELECT MIN(Liveness) FROM Spotify;

SELECT MIN(Valence) FROM spotify;

DELETE FROM spotify
WHERE Valence = 0;

SELECT MIN(Tempo) FROM spotify;

SELECT MIN(Duration_min) FROM spotify;

SELECT COUNT(DISTINCT title) FROM spotify;

SELECT COUNT(DISTINCT channel) FROM spotify;

SELECT MIN(Views) FROM spotify;

DELETE FROM spotify
WHERE Views = 0;

SELECT MIN(Likes) FROM spotify;

DELETE FROM spotify
WHERE Likes = 0;

SELECT MIN(Stream) FROM spotify;

DELETE FROM spotify
WHERE Stream = 0;

SELECT MIN(EnergyLiveness) FROM spotify;

SELECT DISTINCT most_playedon FROM spotify;
