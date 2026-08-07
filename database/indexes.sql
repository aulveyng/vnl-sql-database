-- ==========================================
-- Volleyball Nations League Analytics Platform
-- Indexes
-- ==========================================

-- Teams
CREATE INDEX idx_teams_country_code
ON teams(country_code);

-- Coaches
CREATE INDEX idx_coaches_team_id
ON coaches(team_id);

-- Players
CREATE INDEX idx_players_team_id
ON players(team_id);

CREATE INDEX idx_players_position
ON players(position);

-- Matches
CREATE INDEX idx_matches_week
ON matches(week);

CREATE INDEX idx_matches_date
ON matches(match_date);

CREATE INDEX idx_matches_team_a
ON matches(team_a);

CREATE INDEX idx_matches_team_b
ON matches(team_b);

CREATE INDEX idx_matches_winner
ON matches(winner);

-- Schedule
CREATE INDEX idx_schedule_week
ON schedule(week);

CREATE INDEX idx_schedule_date
ON schedule(match_date);

CREATE INDEX idx_schedule_team_a
ON schedule(team_a);

CREATE INDEX idx_schedule_team_b
ON schedule(team_b);

-- Team Match Statistics
CREATE INDEX idx_team_match_stats_match
ON team_match_stats(match_id);

CREATE INDEX idx_team_match_stats_team
ON team_match_stats(team_id);

-- Standing History
CREATE INDEX idx_standing_history_team
ON standing_history(team_id);

CREATE INDEX idx_standing_history_date
ON standing_history(snapshot_date);

-- Predictions
CREATE INDEX idx_predictions_schedule
ON predictions(schedule_id);

CREATE INDEX idx_predictions_team
ON predictions(predicted_winner);

-- Future Tables
CREATE INDEX idx_player_match_stats_match
ON player_match_stats(match_id);

CREATE INDEX idx_player_match_stats_player
ON player_match_stats(player_id);

CREATE INDEX idx_match_lineups_match
ON match_lineups(match_id);

CREATE INDEX idx_match_lineups_player
ON match_lineups(player_id);

CREATE INDEX idx_weekly_rosters_team
ON weekly_rosters(team_id);

CREATE INDEX idx_world_ranking_team
ON world_ranking_history(team_id);
