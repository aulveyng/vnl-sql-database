# 🏐 Volleyball Nations League Analytics Platform

> An end-to-end sports analytics platform that combines relational database design, SQL analytics, and machine learning to manage Volleyball Nations League data and predict match outcomes.

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-blue)
![SQL](https://img.shields.io/badge/SQL-Analytics-success)
![Python](https://img.shields.io/badge/Python-Machine%20Learning-yellow)
![Status](https://img.shields.io/badge/Status-OnGoing-yellow)

---

# 📖 Overview

The **Volleyball Nations League (VNL) Analytics Platform** is a sports analytics project developed to centralize tournament data, generate analytical insights, and predict future match outcomes using historical team performance.

The project integrates **PostgreSQL**, **SQL**, and **Machine Learning** into a single analytics workflow capable of managing tournament information, engineering predictive features, and forecasting upcoming matches.

Unlike a traditional database project, this platform demonstrates the complete analytics lifecycle—from data modeling and feature engineering to predictive analytics and decision support.

---

# 🎯 Business Problem

Volleyball tournament data is often scattered across multiple sources, making it difficult to monitor team performance, generate standings, compare historical statistics, and predict future match outcomes.

This project addresses these challenges by building a centralized analytics platform that:

- Organizes tournament data into a normalized relational database
- Generates analytical SQL views for reporting
- Produces machine learning-ready datasets
- Predicts future match winners using historical performance metrics

---

# 🎯 Project Objectives

- Design a normalized PostgreSQL relational database.
- Store and manage Volleyball Nations League tournament data.
- Track team performance across multiple tournament weeks.
- Create reusable SQL views for analytics and reporting.
- Engineer predictive features from historical match statistics.
- Train machine learning models to predict future match outcomes.
- Develop a scalable foundation for future sports analytics applications.

---

# 🏗️ System Architecture

```text
Official Match Statistics
          │
          ▼
 PostgreSQL Database
          │
          ▼
 Relational Tables
          │
          ▼
 SQL Views
          │
          ▼
 Feature Engineering
          │
          ▼
 Machine Learning Dataset
          │
          ▼
 Prediction Models
          │
          ▼
 Week 3 Match Predictions
          │
          ▼
 Prediction Storage
```

---

# ⚙️ Technologies Used

| Technology | Purpose |
|------------|---------|
| PostgreSQL | Relational Database Management |
| SQL | Data Manipulation & Analytics |
| Python | Machine Learning |
| Pandas | Data Processing |
| Scikit-learn | Predictive Modeling |
| Jupyter Notebook | Model Development |

---

# 📂 Database Design

The database was designed following relational database principles to eliminate redundancy, improve maintainability, and ensure referential integrity.

## Database Tables

| Table | Description |
|--------|-------------|
| Teams | Stores participating national teams |
| Coaches | Stores coach information |
| Players | Stores player profiles |
| Matches | Stores completed match results |
| Schedule | Stores upcoming fixtures |
| Team_Match_Stats | Stores team statistics for each match |
| Predictions | Stores machine learning predictions |
| Standing_History | Stores historical tournament standings |

### Database Summary

- ✅ 8 Relational Tables
- ✅ Primary & Foreign Key Relationships
- ✅ Normalized Database Design
- ✅ Historical Performance Tracking

---

# 🗺️ Entity Relationship Diagram

![ER Diagram](diagrams/er_diagram.png)

---

# 📊 SQL Analytics

The project includes multiple analytical SQL views that simplify reporting and machine learning feature generation.

## SQL Views

| View | Purpose |
|------|----------|
| Current Team Standings | Computes tournament rankings |
| Team Performance Summary | Aggregated team statistics |
| Match Team Stats Wide | Wide-format analytical dataset |
| Match Features Raw | Raw machine learning features |
| ML Match Features | Engineered ML feature set |
| ML Training Data | Clean training dataset |
| ML Prediction Data | Prediction dataset for upcoming matches |

---

# 📈 Feature Engineering

Historical team performance was transformed into predictive variables for machine learning.

Engineered features include:

- Win Rate Difference
- Attack Efficiency Difference
- Attack Kills Difference
- Serve Aces Difference
- Serve Errors Difference
- Serve Efficiency Difference
- Reception Performance Difference
- Block Points Difference
- Block Touches Difference
- Digs Difference
- Assists Difference
- Total Points Difference
- Break Points Difference

These engineered variables were generated entirely through SQL before model training.

---

# 🤖 Machine Learning

Historical match data from **Weeks 1 and 2** was used to train predictive models capable of forecasting **Week 3** match outcomes.

## Models Implemented

- Logistic Regression
- Random Forest
- Gradient Boosting

### Machine Learning Pipeline

```text
Historical Match Data
          │
          ▼
 Feature Engineering
          │
          ▼
 Training Dataset
          │
          ▼
 Model Training
          │
          ▼
 Model Evaluation
          │
          ▼
 Week 3 Predictions
          │
          ▼
 Prediction Storage
```

---

# 📊 Current Dataset

The platform currently contains:

- 16 National Teams
- 100+ Player Records
- Team Coaches
- Week 1 Schedule
- Week 2 Schedule
- Match Results
- Team Match Statistics
- Historical Standings
- Machine Learning Prediction Data

---

# 🚀 Key Features

- Relational PostgreSQL Database
- Database Normalization
- Historical Team Performance Tracking
- Automated Tournament Standings
- Analytical SQL Views
- Feature Engineering Pipeline
- Machine Learning Dataset Generation
- Match Winner Prediction
- Prediction Storage
- Historical Ranking Snapshots

---

# 📷 Project Screenshots

## Database Schema

![Database](screenshots/database_schema.png)

---

## Current Team Standings

![Standings](screenshots/standings.png)

---

## Sample Prediction Results

![Predictions](screenshots/prediction_results.png)

---

## Machine Learning Workflow

![ML Pipeline](diagrams/ml_pipeline.png)

---

# 📁 Repository Structure

```text
volleyball-nations-league-analytics
│
├── database/
├── datasets/
├── diagrams/
├── documentation/
├── machine-learning/
├── screenshots/
├── views/
├── README.md
└── LICENSE
```

---

# 💡 Future Improvements

The current platform serves as a foundation for future sports analytics enhancements.

Planned improvements include:

- Individual Player Performance Statistics
- Multi-season Historical Database
- Automated Data Collection
- Power BI Dashboard Integration
- Player Performance Prediction
- Semifinal & Finals Prediction Models
- REST API Development
- Interactive Tournament Dashboard
- Real-time Match Prediction
- Model Performance Monitoring

---

# 🎓 Skills Demonstrated

### Database

- PostgreSQL
- Relational Database Design
- Database Normalization
- Primary & Foreign Keys
- SQL Views
- Data Modeling

### Analytics

- SQL
- Data Aggregation
- Feature Engineering
- Sports Analytics
- Statistical Analysis

### Machine Learning

- Predictive Analytics
- Random Forest
- Linear Regression
- Data Preparation
- Model Evaluation

### Data Engineering

- Data Pipeline Design
- Historical Data Processing
- Analytical Dataset Creation

---

# 👨‍💻 About This Project

This project was developed as a personal analytics initiative to apply concepts in **database management**, **SQL analytics**, **statistics**, and **machine learning** to a real-world sports dataset.

It demonstrates how relational databases and predictive analytics can be integrated to support data-driven decision-making in sports.

---

## 📬 Contact

If you'd like to discuss this project or connect professionally, feel free to reach out via **LinkedIn** or explore my other repositories showcasing Business Intelligence, Data Analytics, SQL, and Business Analysis projects.
