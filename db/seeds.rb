User.destroy_all
u1 = User.create :email => 'eric@ga.co', :password => 'nba', :admin => true
u2 = User.create :email => 'luka@ga.co', :password => 'nba'
puts "#{ User.count } users"

Player.destroy_all
p1 = Player.create :name => "Luka Doncic", :position => 'PG', :age => '23', :height => "6'7", :weight => '230', :points => '28.5', :rebounds => '9.1', :assists => '8.7', :blocks => '0.5', :steals => '1.1', :college => '', :image => 'https://media.newyorker.com/photos/5ddd58812ebfed0009e3080a/master/pass/Thomas-LukaDoncic-1.jpg'
p2 = Player.create :name => "Nikola Jokic", :position => 'C', :age => '27', :height => "6'11", :weight => '284', :points => '27.1', :rebounds => '13.8', :assists => '7.9', :blocks => '0.9', :steals => '1.5', :college => '', :image => 'https://nugglove.com/wp-content/uploads/getty-images/2018/09/1039561300.jpeg'
p3 = Player.create :name => "Giannis Antetokounmpo", :position => 'PF', :age => '27', :height => "6'11", :weight => '242', :points => '29.9', :rebounds => '11.6', :assists => '5.8', :blocks => '1.4', :steals => '1.1', :college => '', :image => 'https://library.sportingnews.com/styles/amp_lead_image_16_9/s3/2021-11/giannis-antetokounmpo-11122021-ftr-getty_s33eyyrb2ogz1gf18h024rfp9.jpeg?itok=jIs_o557'
p4 = Player.create :name => "Joel Embiid", :position => 'C', :age => '28', :height => "7'0", :weight => '280', :points => '30.6', :rebounds => '11.7', :assists => '4.2', :blocks => '1.5', :steals => '1.1', :college => 'Kansas', :image => 'https://cdn.vox-cdn.com/thumbor/T5hDBYfnfKGiXCZgdOuhh6dr7JM=/0x0:4077x2719/1200x800/filters:focal(1713x1034:2365x1686)/cdn.vox-cdn.com/uploads/chorus_image/image/70360987/usa_today_17458435.0.jpg'
p5 = Player.create :name => "Kevin Durant", :position => 'PF', :age => '33', :height => "6'10", :weight => '240', :points => '30.1', :rebounds => '7.4', :assists => '6.2', :blocks => '1.0', :steals => '0.9', :college => 'Texas', :image => 'https://www.amny.com/wp-content/uploads/2020/05/kevin_durant_nets-scaled.jpg'
p6 = Player.create :name => "Stephen Curry", :position => 'PG', :age => '34', :height => "6'2", :weight => '185', :points => '25.5', :rebounds => '5.2', :assists => '6.3', :blocks => '0.4', :steals => '1.3', :college => 'Davidson', :image => 'https://library.sportingnews.com/styles/twitter_card_120x120/s3/2022-01/stephen-curry-ftr_1brlc3k3jwvwr1fjrw3y1k16pj.jpeg?itok=NVWEuNh1'
p7 = Player.create :name => "LeBron James", :position => 'SF', :age => '37', :height => "6'9", :weight => '250', :points => '30.3', :rebounds => '8.2', :assists => '6.2', :blocks => '1.1', :steals => '1.3', :college => '', :image => 'https://library.sportingnews.com/2021-12/lebron-james-los-angeles-lakers_kej02uf93prj18vqxkh8dfnqk.png'
p8 = Player.create :name => "Ja Morant", :position => 'PG', :age => '22', :height => "6'3", :weight => '174', :points => '27.4', :rebounds => '5.7', :assists => '6.7', :blocks => '0.4', :steals => '1.2', :college => 'Murray State', :image => 'https://static01.nyt.com/images/2020/08/05/sports/03nba-morant-lede/03nba-morant-lede-mediumSquareAt3X.jpg'
p9 = Player.create :name => "DeMar DeRozan", :position => 'SF', :age => '32', :height => "6'6", :weight => '220', :points => '27.9', :rebounds => '5.2', :assists => '4.9', :blocks => '0.3', :steals => '0.9', :college => 'USC', :image => 'https://cdn.nba.com/manage/2022/03/demar-derozan-smiles.jpg'
p10 = Player.create :name => "Chris Paul", :position => 'PG', :age => '36', :height => "6'0", :weight => '175', :points => '14.7', :rebounds => '4.4', :assists => '10.8', :blocks => '0.3', :steals => '1.9', :college => 'Wake Forest', :image => 'https://thespun.com/wp-content/uploads/2021/07/GettyImages-1328249073.jpg'
puts "#{ Player.count } players"

Team.destroy_all
t1 = Team.create :name => 'LeBron Guards'
t2 = Team.create :name => 'All bigs'

# Association

puts "Teams and users"
u1.teams << t1 << t2

puts "Teams and players"
t1.players << p1 << p6 << p7 << p8 << p10
t2.players << p2 << p3 << p4 << p5 << p7