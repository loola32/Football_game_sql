with tempa as (
select 
'knockout 1' AS Knokcout_Stage,
team_country,
ROW_NUMBER() OVER (order by group_id) as PlayerNum,
group_id,
num_points

from

(
 SELECT
r.team_country,
r.group_id,
r.num_points,
r.goals_diff,
DENSE_RANK() OVER (PARTITION BY r.group_id ORDER BY r.num_points DESC,r.goals_diff desc) AS ranking
FROM
(
 

 SELECT
            team_points.team_country,
            team_points.group_id,
            SUM( CASE win WHEN 1 THEN ( 3 )
                          WHEN 0 THEN ( 1 )
                          ELSE ( 0 )
                END ) AS num_points,
      sum(team_points.goals_diff) as goals_diff
        FROM
 (
 SELECT
 match_id,
   group_id,
 'host'     AS side,
 host_team  AS team_country,
 host_goals AS goals,
 CASE WHEN host_goals > guest_goals THEN 1 WHEN host_goals = guest_goals THEN 0 ELSE -1 END AS win,
host_goals-guest_goals as goals_diff
from matches

UNION ALL

SELECT
 match_id,
   group_id,
'guest'     AS side,
 guest_team  AS team_country,
guest_goals AS goals,
CASE WHEN guest_goals > host_goals THEN 1 WHEN guest_goals = host_goals THEN 0 ELSE -1 END AS win,
guest_goals-host_goals as goals_diff
FROM matches
   ) AS team_points
        GROUP BY
            team_points.team_country,
            team_points.group_id
) as r ) af

where (af.ranking=1 and group_id='B') or (af.ranking=2 and group_id='A')

)

SELECT 
Knokcout_Stage,
  MAX(CASE WHEN PlayerNum = 1 THEN team_country END) Player_1,
    MAX(CASE WHEN PlayerNum = 2 THEN team_country END) Player_2
    from tempa
    group by Knokcout_Stage
