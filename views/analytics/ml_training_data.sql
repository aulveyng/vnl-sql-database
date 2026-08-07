CREATE OR REPLACE VIEW public.ml_training_data
 AS
 SELECT match_id,
    week,
    match_date,
    team_a,
    team_b,
    target,
    team_a_previous_matches,
    team_b_previous_matches,
    team_a_previous_wins,
    team_b_previous_wins,
    team_a_previous_losses,
    team_b_previous_losses,
    team_a_win_rate,
    team_b_win_rate,
    win_rate_diff,
    team_a_attack_efficiency,
    team_b_attack_efficiency,
    attack_efficiency_diff,
    attack_kills_diff,
    serve_aces_diff,
    serve_errors_diff,
    serve_efficiency_diff,
    reception_positive_diff,
    reception_perfect_diff,
    block_points_diff,
    block_touches_diff,
    digs_diff,
    assists_diff,
    points_diff,
    break_points_diff
   FROM ml_match_features
  WHERE team_a_previous_matches > 0 AND team_b_previous_matches > 0;

ALTER TABLE public.ml_training_data
    OWNER TO neondb_owner;

