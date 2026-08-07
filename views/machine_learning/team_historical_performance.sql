CREATE TABLE IF NOT EXISTS public.team_historical_performance
(
    match_id integer NOT NULL,
    match_date date,
    team_id integer NOT NULL,
    previous_matches integer,
    previous_wins integer,
    previous_losses integer,
    previous_win_rate numeric(6,4),
    previous_avg_points numeric(10,2),
    previous_avg_break_points numeric(10,2),
    previous_avg_serve_aces numeric(10,2),
    previous_avg_serve_errors numeric(10,2),
    previous_avg_serve_efficiency numeric(6,2),
    previous_avg_reception_positive_per numeric(6,2),
    previous_avg_reception_perf_per numeric(6,2),
    previous_avg_attack_kills numeric(10,2),
    previous_avg_attack_kills_per numeric(6,2),
    previous_avg_attack_efficiency numeric(6,2),
    previous_avg_block_points numeric(10,2),
    previous_avg_block_touches numeric(10,2),
    previous_avg_digs numeric(10,2),
    previous_avg_assists numeric(10,2),
    CONSTRAINT team_historical_performance_pkey PRIMARY KEY (match_id, team_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.team_historical_performance
    OWNER to neondb_owner;
