# Database

This folder contains the SQL scripts required to recreate the PostgreSQL database used in the Volleyball Nations League Analytics Platform.

## Files

| File | Description |
|------|-------------|
| create_tables.sql | Creates all relational database tables. |
| constraints.sql | Adds foreign key, check, and integrity constraints. |
| indexes.sql | Creates indexes to improve query performance. |

## Database Components

### Base Tables

- Teams
- Coaches
- Players
- Matches
- Schedule
- Team Match Stats
- Standing History
- Predictions

### Planned Tables

The following tables were designed as part of the database architecture but are reserved for future implementation:

- Player Match Stats
- Match Lineups
- Weekly Rosters
- World Ranking History

## Database Design

The database follows relational database design principles using:

- Primary Keys
- Foreign Keys
- Referential Integrity
- Normalized table structure

The schema supports sports analytics, historical performance tracking, and machine learning feature engineering.
