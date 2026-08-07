-- ==========================================
-- Volleyball Nations League Analytics Platform
-- Database Schema
-- ==========================================

-- ======================
-- Teams
-- ======================

CREATE TABLE teams (
    team_id SERIAL PRIMARY KEY,
    team_name VARCHAR(100) NOT NULL,
    country_code CHAR(3) NOT NULL,
    confederation VARCHAR(50) NOT NULL
);

-- ======================
-- Coaches
-- ======================

CREATE TABLE coaches (
    coach_id SERIAL PRIMARY KEY,
    coach_name VARCHAR(100) NOT NULL,
    team_id INTEGER NOT NULL
);

-- ======================
-- Players
-- ======================

CREATE TABLE players (
    player_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    team_id INTEGER NOT NULL,
    position VARCHAR(30),
    height_cm INTEGER,
    birthdate DATE,
    player_no INTEGER,
    age INTEGER
);

-- ======================
-- Matches
-- ======================

CREATE TABLE matches (
    match_id SERIAL PRIMARY KEY,
    week INTEGER NOT NULL,
    match_date DATE NOT NULL,
    venue VARCHAR(100),
    team_a INTEGER NOT NULL,
    team_b INTEGER NOT NULL,
    winner INTEGER,
    duration_minutes INTEGER,
    team_a_sets INTEGER,
    team_b_sets INTEGER
);

-- ======================
-- Schedule
-- ======================

CREATE TABLE schedule (
    schedule_id SERIAL PRIMARY KEY,
    week INTEGER NOT NULL,
    match_date DATE NOT NULL,
    team_a INTEGER NOT NULL,
    team_b INTEGER NOT NULL,
    venue VARCHAR(100)
);

-- ======================
-- Team Match Statistics
-- ======================

CREATE TABLE team_match_stats (

    stat_id SERIAL PRIMARY KEY,

    match_id INTEGER NOT NULL,

    team_id INTEGER NOT NULL,

    total_attack_kills INTEGER,
    total_attack_blocked INTEGER,
    total_attack_errors INTEGER,
    total_attack_attempts INTEGER,
    total_attack_kills_perc DECIMAL(5,2),
    total_attack_efficiency DECIMAL(5,2),

    total_block_pts INTEGER,
    total_block_touches INTEGER,

    total_serve_aces INTEGER,
    total_serve_errors INTEGER,
    total_serve_attempts INTEGER,
    total_serve_efficiency DECIMAL(5,2),

    total_reception_positive_perc DECIMAL(5,2),
    total_reception_errors INTEGER,
    total_reception_attempts INTEGER,
    total_reception_perf_perc DECIMAL(5,2),

    total_digs INTEGER,
    total_assists INTEGER,
    total_points INTEGER,
    total_break_points INTEGER,
    total_pts_bp_ratio DECIMAL(5,2)

);

-- ======================
-- Standing History
-- ======================

CREATE TABLE standing_history (

    standing_id SERIAL PRIMARY KEY,

    snapshot_date DATE NOT NULL,

    team_id INTEGER NOT NULL,

    matches_played INTEGER,

    wins INTEGER,

    losses INTEGER,

    points INTEGER,

    set_ratio DECIMAL(6,3),

    point_ratio DECIMAL(6,3),

    rank INTEGER

);

-- ======================
-- Predictions
-- ======================

CREATE TABLE predictions (

    prediction_id SERIAL PRIMARY KEY,

    schedule_id INTEGER NOT NULL,

    predicted_winner INTEGER NOT NULL,

    winner_probability DECIMAL(5,4),

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

-- ==================================================
-- FUTURE TABLES
-- ==================================================

CREATE TABLE player_match_stats (

    player_stat_id SERIAL PRIMARY KEY,

    match_id INTEGER,

    player_id INTEGER

);

CREATE TABLE match_lineups (

    lineup_id SERIAL PRIMARY KEY,

    match_id INTEGER,

    player_id INTEGER,

    team_id INTEGER

);

CREATE TABLE weekly_rosters (

    roster_id SERIAL PRIMARY KEY,

    week INTEGER,

    player_id INTEGER,

    team_id INTEGER

);

CREATE TABLE world_ranking_history (

    ranking_id SERIAL PRIMARY KEY,

    ranking_date DATE,

    team_id INTEGER,

    world_rank INTEGER,

    ranking_points DECIMAL(8,2)

);
