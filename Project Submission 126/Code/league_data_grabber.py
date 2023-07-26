from riotwatcher import LolWatcher
import mysql.connector

# Connect to the Riot API
api_key = 'RGAPI-5ee9ba0f-7578-42bb-8e63-a4bf62fbdb66'
watcher = LolWatcher(api_key)

# Connect to the MySQL database
db_host = 'localhost'
db_name = 'league_data'
db_user = 'root'
db_password = 'LudensEkko786!'
db = mysql.connector.connect(host=db_host, user=db_user, password=db_password, database=db_name)
cursor = db.cursor()

# parses the participant ID based on the given summoner name
def get_participant_id(match_json, puuid):
    id=0
    participants = match_json['metadata']['participants']
    for summoner in participants:
        id+=1
        if summoner == puuid:
            return id

    return -1

# Get list of regions
regions = ['NA1', 'EUW1', 'KR']

# Insert regions into the Region table
for region in regions:
    cursor.execute("INSERT INTO Region (region_name) VALUES ('%s')" % region)

latest = watcher.data_dragon.versions_for_region('na1')['n']['champion']
champions = watcher.data_dragon.champions(latest, False, 'en_US')
# Process the list of champions
for champion in champions['data']:
    champion_id = champions['data'][champion]['key']
    champion_name = champions['data'][champion]['name']

    cursor.execute("INSERT INTO Champion (champion_id, champion_name) VALUES (%s, %s)", (champion_id, champion_name))

# Get list of players in each region and insert into Player table
for region in regions:
    region_name=region
    players = watcher.league.challenger_by_queue(region, 'RANKED_SOLO_5x5')['entries']
    for player in players:
        player_id = player['summonerId']
        player_name = player['summonerName']
        league_points = player['leaguePoints']
        wins = player['wins']
        losses = player['losses']
        summoner = watcher.summoner.by_id(region, player_id)
        puuid = summoner['puuid']
        print(puuid)
        cursor.execute("INSERT INTO Player (puuid, player_id, player_name, region_id, league_points, wins, losses) VALUES ('%s', '%s', '%s', (SELECT region_id FROM Region WHERE region_name='%s' LIMIT 1), %s, %s, %s)" % (puuid, player_id, player_name, region, league_points, wins, losses))

        matchlist = watcher.match.matchlist_by_puuid(region, puuid)
        for match in matchlist:
            match_id = match
            gameData = watcher.match.by_id(region, match)

            participant_id = get_participant_id(gameData, puuid)
            

            # riot orders participants in the section 1-10, so can be indexed by subtracting one from the id
            participant_json = gameData['info']['participants'][participant_id - 1]
            champion_id = participant_json['championId']
            #Player_Match_Stats pulled
            team_position = participant_json['teamPosition']
            kills = participant_json['kills']
            deaths = participant_json['deaths']
            assists = participant_json['assists']
            gold_earned = participant_json['goldEarned']
            damage_dealt = participant_json['totalDamageDealtToChampions']
            objective_damage_dealt = participant_json['damageDealtToObjectives']
            minions_killed = participant_json['totalMinionsKilled']
            neutral_minions_killed = participant_json['neutralMinionsKilled']
           
            #Team
            team_id = participant_json['teamId']
            if team_id == 100:
                team_name="Blue Team"
            else:
                team_name = "Red Team"
            
            # print(puuid)
            # print(match_id)
            # print(champion_id)
            # print(team_id)
            # print(team_position)
            # print(kills)
            # print(deaths)
            # print(assists)
           # print(gold_earned)
           # print(damage_dealt)
           # print(objective_damage_dealt)
           # print(minions_killed)
           # print(neutral_minions_killed)
            
            cursor.execute("INSERT IGNORE INTO Player_Match_Stats (puuid, match_id, champion_id, team_id, team_name, team_position, kills, deaths, assists, gold_earned, damage_dealt, objective_damage_dealt, minions_killed, neutral_minions_killed) VALUES ('%s', '%s', %s, %s, '%s','%s', %s, %s, %s, %s, %s, %s, %s, %s)" % (puuid, match_id, champion_id, team_id, team_name, team_position, kills, deaths, assists, gold_earned, damage_dealt, objective_damage_dealt, minions_killed, neutral_minions_killed)) 

    db.commit()

print("Data successfully inserted into the database.")
