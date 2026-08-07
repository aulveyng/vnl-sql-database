CREATE OR REPLACE VIEW public.team_performance_summary
 AS
 SELECT t.team_id,
    t.team_name,
    t.country_code,
    count(DISTINCT s.match_id) AS matches_played,
    sum(s.total_points) AS total_points,
    avg(s.total_points) AS avg_points,
    sum(s.total_break_points) AS total_break_points,
    avg(s.total_break_points) AS avg_break_points,
    sum(s.total_serve_attempts) AS total_serve_attempts,
    sum(s.total_serve_errors) AS total_serve_errors,
    sum(s.total_serve_aces) AS total_serve_aces,
    round(sum(s.total_serve_aces)::numeric / NULLIF(sum(s.total_serve_attempts), 0)::numeric, 2) AS overall_serve_ace_rate,
    avg(s.total_serve_efficiency) AS avg_serve_efficiency,
    sum(s.total_reception_attempts) AS total_reception_attempts,
    sum(s.total_reception_errors) AS total_reception_errors,
    avg(s.total_reception_positive_per) AS avg_reception_positive_per,
    avg(s.total_reception_perf_per) AS avg_reception_perf_per,
    sum(s.total_attack_attempts) AS total_attack_attempts,
    sum(s.total_attack_errors) AS total_attack_errors,
    sum(s.total_attack_blocked) AS total_attack_blocked,
    sum(s.total_attack_kills) AS total_attack_kills,
    round(sum(s.total_attack_kills)::numeric / NULLIF(sum(s.total_attack_attempts), 0)::numeric, 2) AS overall_attack_kills_per,
    avg(s.total_attack_kills_per) AS avg_attack_kills_per,
    avg(s.total_attack_efficiency) AS avg_attack_efficiency,
    sum(s.total_block_pts) AS total_block_pts,
    sum(s.total_block_touches) AS total_block_touches,
    avg(s.total_block_pts) AS avg_block_pts,
    sum(s.total_digs) AS total_digs,
    avg(s.total_digs) AS avg_digs,
    sum(s.total_assists) AS total_assists,
    avg(s.total_assists) AS avg_assists
   FROM teams t
     LEFT JOIN team_match_stats s ON t.team_id = s.team_id
  GROUP BY t.team_id, t.team_name, t.country_code;

ALTER TABLE public.team_performance_summary
    OWNER TO neondb_owner;

