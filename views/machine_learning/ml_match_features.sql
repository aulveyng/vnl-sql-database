CREATE OR REPLACE VIEW public.ml_match_features
 AS
 SELECT m.match_id,
    m.week,
    m.match_date,
    m.team_a,
    m.team_b,
        CASE
            WHEN m.winner = m.team_a THEN 1
            ELSE 0
        END AS target,
    a.previous_matches AS team_a_previous_matches,
    b.previous_matches AS team_b_previous_matches,
    a.previous_wins AS team_a_previous_wins,
    b.previous_wins AS team_b_previous_wins,
    a.previous_losses AS team_a_previous_losses,
    b.previous_losses AS team_b_previous_losses,
    a.previous_win_rate AS team_a_win_rate,
    b.previous_win_rate AS team_b_win_rate,
    a.previous_win_rate - b.previous_win_rate AS win_rate_diff,
    a.previous_avg_attack_efficiency AS team_a_attack_efficiency,
    b.previous_avg_attack_efficiency AS team_b_attack_efficiency,
    a.previous_avg_attack_efficiency - b.previous_avg_attack_efficiency AS attack_efficiency_diff,
    a.previous_avg_attack_kills - b.previous_avg_attack_kills AS attack_kills_diff,
    a.previous_avg_serve_aces - b.previous_avg_serve_aces AS serve_aces_diff,
    a.previous_avg_serve_errors - b.previous_avg_serve_errors AS serve_errors_diff,
    a.previous_avg_serve_efficiency - b.previous_avg_serve_efficiency AS serve_efficiency_diff,
    a.previous_avg_reception_positive_per - b.previous_avg_reception_positive_per AS reception_positive_diff,
    a.previous_avg_reception_perf_per - b.previous_avg_reception_perf_per AS reception_perfect_diff,
    a.previous_avg_block_points - b.previous_avg_block_points AS block_points_diff,
    a.previous_avg_block_touches - b.previous_avg_block_touches AS block_touches_diff,
    a.previous_avg_digs - b.previous_avg_digs AS digs_diff,
    a.previous_avg_assists - b.previous_avg_assists AS assists_diff,
    a.previous_avg_points - b.previous_avg_points AS points_diff,
    a.previous_avg_break_points - b.previous_avg_break_points AS break_points_diff
   FROM matches m
     JOIN team_historical_performance a ON m.match_id = a.match_id AND m.team_a = a.team_id
     JOIN team_historical_performance b ON m.match_id = b.match_id AND m.team_b = b.team_id;

ALTER TABLE public.ml_match_features
    OWNER TO neondb_owner;

