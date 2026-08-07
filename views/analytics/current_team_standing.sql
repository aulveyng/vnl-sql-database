CREATE OR REPLACE VIEW public.current_team_standings
 AS
 WITH team_match_results AS (
         SELECT matches.team_a AS team_id,
            matches.match_id,
            matches.team_a_sets AS sets_won,
            matches.team_b_sets AS sets_lost,
                CASE
                    WHEN matches.winner = matches.team_a THEN 1
                    ELSE 0
                END AS wins,
                CASE
                    WHEN matches.winner <> matches.team_a THEN 1
                    ELSE 0
                END AS losses,
                CASE
                    WHEN matches.winner = matches.team_a AND matches.team_a_sets = 3 AND matches.team_b_sets <= 1 THEN 3
                    WHEN matches.winner = matches.team_a AND matches.team_a_sets = 3 AND matches.team_b_sets = 2 THEN 2
                    WHEN matches.winner <> matches.team_a AND matches.team_b_sets = 3 AND matches.team_a_sets = 2 THEN 1
                    ELSE 0
                END AS match_points
           FROM matches
        UNION ALL
         SELECT matches.team_b AS team_id,
            matches.match_id,
            matches.team_b_sets AS sets_won,
            matches.team_a_sets AS sets_lost,
                CASE
                    WHEN matches.winner = matches.team_b THEN 1
                    ELSE 0
                END AS wins,
                CASE
                    WHEN matches.winner <> matches.team_b THEN 1
                    ELSE 0
                END AS losses,
                CASE
                    WHEN matches.winner = matches.team_b AND matches.team_b_sets = 3 AND matches.team_a_sets <= 1 THEN 3
                    WHEN matches.winner = matches.team_b AND matches.team_b_sets = 3 AND matches.team_a_sets = 2 THEN 2
                    WHEN matches.winner <> matches.team_b AND matches.team_a_sets = 3 AND matches.team_b_sets = 2 THEN 1
                    ELSE 0
                END AS match_points
           FROM matches
        )
 SELECT t.team_id,
    t.team_name,
    t.country_code,
    t.confederation,
    count(r.match_id) AS matches_played,
    COALESCE(sum(r.wins), 0::bigint) AS wins,
    COALESCE(sum(r.losses), 0::bigint) AS losses,
    COALESCE(sum(r.match_points), 0::bigint) AS match_points,
    COALESCE(sum(r.sets_won), 0::bigint) AS sets_won,
    COALESCE(sum(r.sets_lost), 0::bigint) AS sets_lost,
    round(sum(r.sets_won)::numeric / NULLIF(sum(r.sets_lost), 0)::numeric, 2) AS set_ratio
   FROM teams t
     LEFT JOIN team_match_results r ON t.team_id = r.team_id
  GROUP BY t.team_id, t.team_name, t.country_code, t.confederation
  ORDER BY (COALESCE(sum(r.match_points), 0::bigint)) DESC, (COALESCE(sum(r.wins), 0::bigint)) DESC, (round(sum(r.sets_won)::numeric / NULLIF(sum(r.sets_lost), 0)::numeric, 2)) DESC;

ALTER TABLE public.current_team_standings
    OWNER TO neondb_owner;

