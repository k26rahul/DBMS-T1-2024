-- GRPA 1
-- select matches.match_num, match_referees.assistant_referee_1 from matches
-- join match_referees on matches.match_num = match_referees.match_num
-- where match_date = '2020-05-15'
select
  matches.match_num,
  referees.name
from
  matches
  join match_referees on matches.match_num = match_referees.match_num
  join referees on match_referees.assistant_referee_1 = referees.referee_id
where
  match_date = '2020-05-15';

-- GRPA 2
select
  players.name,
  players.dob
from
  players
  join teams on teams.team_id = players.team_id
where
  teams.name = 'Arawali'
order by
  dob desc
limit
  1;

-- GRPA 3
select
  players.name,
  players.dob
from
  players
  join teams on teams.team_id = players.team_id
where
  teams.name = 'Amigos'
  or teams.name = 'Black Eagles';