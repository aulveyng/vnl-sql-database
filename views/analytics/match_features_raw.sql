CREATE OR REPLACE VIEW public.match_features_raw
 AS
 SELECT match_id,
    week,
    match_date,
    team_a,
    team_b,
    winner,
        CASE
            WHEN winner = team_a THEN 1
            ELSE 0
        END AS target,
    team_a_points - team_b_points AS points_diff,
    team_a_break_points - team_b_break_points AS break_points_diff,
    team_a_serve_aces - team_b_serve_aces AS serve_aces_diff,
    team_a_serve_errors - team_b_serve_errors AS serve_errors_diff,
    team_a_serve_efficiency - team_b_serve_efficiency AS serve_efficiency_diff,
    team_a_reception_attempts - team_b_reception_attempts AS reception_attempts_diff,
    team_a_reception_errors - team_b_reception_errors AS reception_errors_diff,
    team_a_reception_positive_per - team_b_reception_positive_per AS reception_positive_diff,
    team_a_reception_perf_per - team_b_reception_perf_per AS reception_perfect_diff,
    team_a_attack_attempts - team_b_attack_attempts AS attack_attempts_diff,
    team_a_attack_errors - team_b_attack_errors AS attack_errors_diff,
    team_a_attack_blocked - team_b_attack_blocked AS attack_blocked_diff,
    team_a_attack_kills - team_b_attack_kills AS attack_kills_diff,
    team_a_attack_kills_per - team_b_attack_kills_per AS attack_kills_per_diff,
    team_a_attack_efficiency - team_b_attack_efficiency AS attack_efficiency_diff,
    team_a_block_pts - team_b_block_pts AS block_points_diff,
    team_a_block_touches - team_b_block_touches AS block_touches_diff,
    team_a_digs - team_b_digs AS digs_diff,
    team_a_assists - team_b_assists AS assists_diff
   FROM match_team_stats_wide;

ALTER TABLE public.match_features_raw
    OWNER TO neondb_owner;

