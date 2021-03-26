create table matches 
(match_id integer(1),
host_team varchar(15),
guest_team varchar(15),
host_goals integer,
guest_goals integer,
group_id varchar(2)
);


insert into matches (match_id, host_team, guest_team, host_goals, guest_goals ,group_id) values (1,'Argentina','Nigeria',2,0,'A');
insert into matches (match_id, host_team, guest_team, host_goals, guest_goals ,group_id) values (2,'Germany','Japan',1,1, 'A');
insert into matches (match_id, host_team, guest_team, host_goals, guest_goals ,group_id) values (3,'Japan','Argentina',0,1, 'A');
insert into matches (match_id, host_team, guest_team, host_goals, guest_goals ,group_id) values (4,'Germany','Nigeria',2,3, 'A');
insert into matches (match_id, host_team, guest_team, host_goals, guest_goals ,group_id) values (5,'Nigeria','Japan',0,0, 'A');
insert into matches (match_id, host_team, guest_team, host_goals, guest_goals ,group_id) values (6,'Germany','Argentina',1,0, 'A');
insert into matches (match_id, host_team, guest_team, host_goals, guest_goals ,group_id) values (7,'Brazil','Turkey',2,1, 'B');
insert into matches (match_id, host_team, guest_team, host_goals, guest_goals ,group_id) values (8,'China','Costa-Rica',0,2,'B');
insert into matches (match_id, host_team, guest_team, host_goals, guest_goals ,group_id) values (9,'Brazil','China',4,0, 'B');
insert into matches (match_id, host_team, guest_team, host_goals, guest_goals ,group_id) values (10,'Costa-Rica','Turkey',1,1, 'B');
insert into matches (match_id, host_team, guest_team, host_goals, guest_goals ,group_id) values (11,'Costa-Rica','Brazil',2,5, 'B');
insert into matches (match_id, host_team, guest_team, host_goals, guest_goals ,group_id) values (12,'Turkey','China',3,0, 'B');
