-- ==========================================
-- Volleyball Nations League Analytics Platform
-- Constraints
-- ==========================================

-- ==========================================
-- Coaches
-- ==========================================

ALTER TABLE coaches
ADD CONSTRAINT fk_coaches_team
FOREIGN KEY (team_id)
REFERENCES teams(team_id);

-- ==========================================
-- Players
-- ==========================================

ALTER TABLE players
ADD CONSTRAINT fk_players_team
FOREIGN KEY (team_id)
REFERENCES teams(team_id);

-- ==========================================
-- Matches
-- ==========================================

ALTER TABLE matches
ADD CONSTRAINT fk_matches_team_a
FOREIGN KEY (team_a)
REFERENCES teams(team_id);

ALTER TABLE matches
ADD CONSTRAINT fk_matches_team_b
FOREIGN KEY (team_b)
REFERENCES teams(team_id);

ALTER TABLE matches
ADD CONSTRAINT fk_matches_winner
FOREIGN KEY (winner)
REFERENCES teams(team_id);

-- ==========================================
-- Schedule
-- ==========================================

ALTER TABLE schedule
ADD CONSTRAINT fk_schedule_team_a
FOREIGN KEY (team_a)
REFERENCES teams(team_id);

ALTER TABLE schedule
ADD CONSTRAINT fk_schedule_team_b
FOREIGN KEY (team_b)
REFERENCES teams(team_id);

-- ==========================================
-- Team Match Statistics
-- ==========================================

ALTER TABLE team_match_stats
ADD CONSTRAINT fk_stats_match
FOREIGN KEY (match_id)
REFERENCES matches(match_id);

ALTER TABLE team_match_stats
ADD CONSTRAINT fk_stats_team
FOREIGN KEY (team_id)
REFERENCES teams(team_id);

-- ==========================================
-- Standing History
-- ==========================================

ALTER TABLE standing_history
ADD CONSTRAINT fk_standings_team
FOREIGN KEY (team_id)
REFERENCES teams(team_id);

-- ==========================================
-- Predictions
-- ==========================================

ALTER TABLE predictions
ADD CONSTRAINT fk_predictions_schedule
FOREIGN KEY (schedule_id)
REFERENCES schedule(schedule_id);

ALTER TABLE predictions
ADD CONSTRAINT fk_predictions_team
FOREIGN KEY (predicted_winner)
REFERENCES teams(team_id);

-- ==========================================
-- Player Match Statistics
-- ==========================================

ALTER TABLE player_match_stats
ADD CONSTRAINT fk_player_stats_match
FOREIGN KEY (match_id)
REFERENCES matches(match_id);

ALTER TABLE player_match_stats
ADD CONSTRAINT fk_player_stats_player
FOREIGN KEY (player_id)
REFERENCES players(player_id);

-- ==========================================
-- Match Lineups
-- ==========================================

ALTER TABLE match_lineups
ADD CONSTRAINT fk_lineups_match
FOREIGN KEY (match_id)
REFERENCES matches(match_id);

ALTER TABLE match_lineups
ADD CONSTRAINT fk_lineups_player
FOREIGN KEY (player_id)
REFERENCES players(player_id);

ALTER TABLE match_lineups
ADD CONSTRAINT fk_lineups_team
FOREIGN KEY (team_id)
REFERENCES teams(team_id);

-- ==========================================
-- Weekly Rosters
-- ==========================================

ALTER TABLE weekly_rosters
ADD CONSTRAINT fk_rosters_player
FOREIGN KEY (player_id)
REFERENCES players(player_id);

ALTER TABLE weekly_rosters
ADD CONSTRAINT fk_rosters_team
FOREIGN KEY (team_id)
REFERENCES teams(team_id);

-- ==========================================
-- World Ranking History
-- ==========================================

ALTER TABLE world_ranking_history
ADD CONSTRAINT fk_rankings_team
FOREIGN KEY (team_id)
REFERENCES teams(team_id);

-- ==========================================
-- CHECK Constraints
-- ==========================================

ALTER TABLE players
ADD CONSTRAINT chk_player_height
CHECK (height_cm > 0);

ALTER TABLE players
ADD CONSTRAINT chk_player_age
CHECK (age >= 15);

ALTER TABLE matches
ADD CONSTRAINT chk_match_week
CHECK (week >= 1);

ALTER TABLE schedule
ADD CONSTRAINT chk_schedule_week
CHECK (week >= 1);

ALTER TABLE matches
ADD CONSTRAINT chk_sets
CHECK (
    team_a_sets >= 0
    AND team_b_sets >= 0
);

ALTER TABLE predictions
ADD CONSTRAINT chk_probability
CHECK (
    winner_probability >= 0
    AND winner_probability <= 1
);
