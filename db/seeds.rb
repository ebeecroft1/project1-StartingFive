User.destroy_all
u1 = User.create :email => 'eric@ga.co', :password => 'nba', :admin => true
u2 = User.create :email => 'luka@ga.co', :password => 'nba'
puts "#{ User.count } users"

Player.destroy_all
p1 = Player.create :name => "Luka Doncic", :position => 'PG', :age => '23', :height => "6'7", :weight => '230', :points => '28.5', :rebounds => '9.1', :assists => '8.7', :blocks => '0.5', :steals => '1.1', :college => '', :image => 'https://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/3945274.png&w=350&h=254'
p2 = Player.create :name => "Nikola Jokic", :position => 'C', :age => '27', :height => "6'11", :weight => '284', :points => '27.1', :rebounds => '13.8', :assists => '7.9', :blocks => '0.9', :steals => '1.5', :college => '', :image => 'https://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/3112335.png&w=350&h=254'
p3 = Player.create :name => "Giannis Antetokounmpo", :position => 'PF', :age => '27', :height => "6'11", :weight => '242', :points => '29.9', :rebounds => '11.6', :assists => '5.8', :blocks => '1.4', :steals => '1.1', :college => '', :image => 'https://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/3032977.png&w=350&h=254'
p4 = Player.create :name => "Joel Embiid", :position => 'C', :age => '28', :height => "7'0", :weight => '280', :points => '30.6', :rebounds => '11.7', :assists => '4.2', :blocks => '1.5', :steals => '1.1', :college => 'Kansas', :image => 'https://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/3059318.png&w=350&h=254'
p5 = Player.create :name => "Kevin Durant", :position => 'PF', :age => '33', :height => "6'10", :weight => '240', :points => '30.1', :rebounds => '7.4', :assists => '6.2', :blocks => '1.0', :steals => '0.9', :college => 'Texas', :image => 'https://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/3202.png&w=350&h=254'
p6 = Player.create :name => "Stephen Curry", :position => 'PG', :age => '34', :height => "6'2", :weight => '185', :points => '25.5', :rebounds => '5.2', :assists => '6.3', :blocks => '0.4', :steals => '1.3', :college => 'Davidson', :image => 'https://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/3975.png&w=350&h=254'
p7 = Player.create :name => "LeBron James", :position => 'SF', :age => '37', :height => "6'9", :weight => '250', :points => '30.3', :rebounds => '8.2', :assists => '6.2', :blocks => '1.1', :steals => '1.3', :college => '', :image => 'https://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/1966.png&w=350&h=254'
p8 = Player.create :name => "Ja Morant", :position => 'PG', :age => '22', :height => "6'3", :weight => '174', :points => '27.4', :rebounds => '5.7', :assists => '6.7', :blocks => '0.4', :steals => '1.2', :college => 'Murray State', :image => 'https://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/4279888.png&w=350&h=254'
p9 = Player.create :name => "DeMar DeRozan", :position => 'SF', :age => '32', :height => "6'6", :weight => '220', :points => '27.9', :rebounds => '5.2', :assists => '4.9', :blocks => '0.3', :steals => '0.9', :college => 'USC', :image => 'https://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/3978.png&w=350&h=254'
p10 = Player.create :name => "Chris Paul", :position => 'PG', :age => '36', :height => "6'0", :weight => '175', :points => '14.7', :rebounds => '4.4', :assists => '10.8', :blocks => '0.3', :steals => '1.9', :college => 'Wake Forest', :image => 'https://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/2779.png&w=350&h=254'
p11 = Player.create :name => "Jimmy Butler", :position => 'SF', :age => '32', :height => "6'7", :weight => '230', :points => '21.4', :rebounds => '5.9', :assists => '5.5', :blocks => '0.5', :steals => '1.6', :college => 'Marquette', :image => 'https://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/6430.png&w=350&h=254'
p12 = Player.create :name => "Jayson Tatum", :position => 'SF', :age => '24', :height => "6'8", :weight => '210', :points => '26.9', :rebounds => '8.0', :assists => '4.4', :blocks => '0.6', :steals => '1.0', :college => 'Duke', :image => 'https://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/4065648.png&w=350&h=254'
p13 = Player.create :name => "Devin Booker", :position => 'SG', :age => '25', :height => "6'5", :weight => '206', :points => '26.8', :rebounds => '5.0', :assists => '4.8', :blocks => '0.4', :steals => '1.1', :college => 'Kentucky', :image => 'https://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/3136193.png&w=350&h=254'
p14 = Player.create :name => "Donovan Mitchell", :position => 'SG', :age => '25', :height => "6'1", :weight => '215', :points => '25.9', :rebounds => '4.2', :assists => '5.3', :blocks => '0.2', :steals => '1.5', :college => 'Louisville', :image => 'https://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/3908809.png&w=350&h=254'
# Add 11 next players
puts "#{ Player.count } players"

Team.destroy_all
t1 = Team.create :name => 'LeBron Guards'
t2 = Team.create :name => 'All bigs'
puts "#{ Team.count } teams"

# Association

puts "Teams and users"
u1.teams << t1 << t2
u2.teams << t1 << t2

puts "Teams and players"
t1.players << p1 << p6 << p7 << p8 << p10
t2.players << p2 << p3 << p4 << p5 << p7