CREATE TABLE Champion (
  champion_id INT PRIMARY KEY,
  champion_name VARCHAR(30)
);

CREATE TABLE Region (
  region_id SMALLINT PRIMARY KEY AUTO_INCREMENT,
  region_name VARCHAR(15) 
);

CREATE TABLE Player (
  puuid VARCHAR(78) PRIMARY KEY,
  player_id VARCHAR(63),
  player_name VARCHAR(30),
  region_id SMALLINT,
  league_points INT,
  wins INT,
  losses INT,
  FOREIGN KEY (region_id) REFERENCES Region(region_id)
);

CREATE TABLE Player_Match_Stats (
  puuid VARCHAR(78),
  match_id VARCHAR(30),
  champion_id INT,
  team_id INT,
  team_name VARCHAR(20),
  team_position varchar(15),
  kills INT,
  deaths INT,
  assists INT,
  gold_earned BIGINT,
  damage_dealt BIGINT,
  objective_damage_dealt BIGINT,
  minions_killed INT,
  neutral_minions_killed INT,
  PRIMARY KEY (puuid, champion_id),
  FOREIGN KEY (puuid) REFERENCES Player(puuid),
  FOREIGN KEY (champion_id) REFERENCES Champion(champion_id)
);
