<div align="center">
  <img src="https://storage.googleapis.com/pr-newsroom-wp/1/2023/05/Spotify_Primary_Logo_RGB_Green.png" alt="Spotify Logo" width="200"/>
</div>

# 🎵 Spotify Data Analysis Project

## Overview
This project performs comprehensive data analysis on Spotify track data using SQL. It explores various metrics including streaming performance, audio features, and engagement statistics to derive meaningful insights about music trends and track characteristics.

## 📊 Database Schema

The project uses a single table `spotify` with the following structure:

**Track Information:**
- Artist, Track, Album, Album_type

**Audio Features:**
- Danceability, Energy, Loudness, Speechiness
- Acousticness, Instrumentalness, Liveness, Valence
- Tempo, Duration_min

**Engagement Metrics:**
- Views, Likes, Comments, Stream
- Licensed (Boolean), official_video (Boolean)

**Platform Data:**
- Title, Channel, most_playedon

## 🔍 Analysis Performed

### Basic Queries
1. **High-Streaming Tracks** - Identifies tracks with over 1 billion streams
2. **Top Energy Tracks** - Finds the 5 tracks with highest energy values
3. **Album-Artist Catalog** - Lists all albums with their respective artists
4. **Engagement Analysis** - Calculates total comments for licensed tracks
5. **Album Type Filtering** - Retrieves all single-type releases

### Intermediate Analysis
6. **Artist Productivity** - Counts total tracks per artist
7. **Danceability Metrics** - Calculates average danceability by album
8. **Video Performance** - Analyzes views and likes for official videos
9. **Album Popularity** - Computes total views per album
10. **Platform Comparison** - Identifies tracks more popular on Spotify vs YouTube

### Advanced Queries
11. **Artist Top Tracks** - Uses window functions to find top 3 viewed tracks per artist
12. **Liveness Analysis** - Finds tracks with above-average liveness scores
13. **Energy Range** - Calculates energy difference within albums using CTEs
14. **Ratio Analysis** - Identifies tracks with energy-to-liveness ratio > 1.2
15. **Cumulative Metrics** - Computes cumulative sum of likes ordered by views

## 🛠️ Technologies Used

- **Database:** PostgreSQL/MySQL
- **Language:** SQL
- **Concepts Applied:**
  - Aggregate Functions (SUM, AVG, COUNT, MAX, MIN)
  - GROUP BY and HAVING clauses
  - Window Functions (DENSE_RANK, SUM OVER)
  - Common Table Expressions (CTEs)
  - Subqueries
  - CASE statements

## 📁 Project Structure

```
spotify-analysis/
│
├── Spotify_Table.sql       # Database schema and EDA
├── Spotify_Query.sql       # Analysis queries (Q1-Q15)
└── README.md              # Project documentation
```

## 🚀 Getting Started

### Prerequisites
- PostgreSQL 12+ or MySQL 8+
- SQL client (pgAdmin, MySQL Workbench, or DBeaver)

### Installation

1. **Create Database**
   ```sql
   CREATE DATABASE spotify_analysis;
   ```

2. **Run Schema File**
   ```bash
   psql -d spotify_analysis -f Spotify_Table.sql
   ```

3. **Import Your Data**
   - Load your Spotify dataset into the created table

4. **Execute Analysis Queries**
   ```bash
   psql -d spotify_analysis -f Spotify_Query.sql
   ```

## 📈 Data Cleaning Process

The project includes exploratory data analysis (EDA) with the following cleaning steps:

- Removal of records with zero danceability
- Removal of records with zero instrumentalness
- Removal of records with zero valence
- Removal of records with zero views, likes, and streams
- Validation of min/max values for all numeric columns

## 💡 Key Insights

This analysis enables you to:

- Identify top-performing tracks and artists
- Understand audio feature distributions
- Compare platform-specific performance (Spotify vs YouTube)
- Analyze engagement metrics (views, likes, comments)
- Discover correlations between audio features and popularity

## 🤝 Contributing

Contributions are welcome! Feel free to:

1. Fork the project
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 👨‍💻 Author

**Your Name**

- GitHub: [CODERGURU26](https://github.com/CODERGURU26)
- LinkedIn: [Gururaj Krishna Sharma](https://www.linkedin.com/in/gururaj-krishna-sharma-bb0a70322/)
- Project Link: [Netflix Content Analysis](https://github.com/CODERGURU26/Data_Analysis_Netflix_Kaggle_Dataset.git)

---

## 📧 Contact

For questions or feedback, please open an issue in the repository.
