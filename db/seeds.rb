# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


team_list = [
	["NiP", "current best Swedish team", 1],
	["SK Gaming", "two time major winners from Brazil", 2],
	["VP", "Polish powerhouse, longest running lineup", 3],
	["Astralis", "Best Danish team", 4],
	["Dignitas", "second best Danish team", 5],
	["Optic Gaming", "Recently won Eleauge Season 2 for $400k", 6],
	["Cloud9", "NAs favourite team", 7],
	["FaZe clan", "The team of endless roster changes", 8],
	["Natus Vincere", "best CIS team", 9],
	["G2", "A once great french side", 10]
]

teamObjList = Array.new

team_list.each do |name, info, rank|
	@team = Team.create(name: name, info: info, rank: rank)
	teamObjList.push(@team)
end

puts "hello #{teamObjList}"

player_list = [
	["f0rest", 90 , "one of the best", teamObjList[0].id],
	["Get_Right", 95 , "Best player of all time", teamObjList[0].id],
	["Xist", 70, "Amazing IGL", teamObjList[0].id],
	["friberg", 60 , "Needs to go", teamObjList[0].id],
	["pyth", 75 , "babyface, plays amazing though", teamObjList[0].id],
	["Fallen", 90 , "best IGL currently", teamObjList[1].id],
	["Coldzera", 97 , "best player 2016", teamObjList[1].id],
	["Fer", 85 , "Agressive playstyle", teamObjList[1].id],
	["TACO", 80 , "one of the best", teamObjList[1].id],
	["Fox", 50 , "Stand-in", teamObjList[1].id],
	["Taz", 80 , "one of the best", teamObjList[2].id],
	["NEO", 85 , "one of the best", teamObjList[2].id],
	["Pasha", 75 , "one of the best", teamObjList[2].id],
	["Snax", 90 , "Amazing AWPer (somtimes)", teamObjList[2].id],
	["Byali", 30 , "probably cheating", teamObjList[2].id],
	["Dev1ce", 99 , "Best player in denmark, god tier", teamObjList[3].id],
	["Xyp9x", 90 , "Amazing support and clutch", teamObjList[3].id],
	["gal1ve", 80 , "best IGL ever", teamObjList[3].id],
	["dupreeh", 96 , "amazing entry", teamObjList[3].id],
	["Kjaerbye", 94 , "Young talent", teamObjList[3].id],
	["MSL", 70 , "one of the best", teamObjList[4].id],
	["Magisk", 70 , "one of the best", teamObjList[4].id],
	["K0nfig", 70 , "one of the best", teamObjList[4].id],
	["cajunB", 70 , "one of the best", teamObjList[4].id],
	["RUBINO", 70 , "one of the best", teamObjList[4].id],
	["RUSH", 70 , "one of the best", teamObjList[5].id],
	["mixwell", 70 , "one of the best", teamObjList[5].id],
	["stanislaw", 70 , "one of the best", teamObjList[5].id],
	["NAF-fly", 70 , "one of the best", teamObjList[5].id],
	["tarik", 70 , "one of the best", teamObjList[5].id],
	["n0thing", 70 , "one of the best", teamObjList[6].id],
	["skadoodle", 70 , "one of the best", teamObjList[6].id],
	["shroud", 70 , "one of the best", teamObjList[6].id],
	["autimatic", 70 , "one of the best", teamObjList[6].id],
	["Stewie2k", 92 , "YUNG STEW", teamObjList[6].id],
	["karrigan", 70 , "one of the best", teamObjList[7].id],
	["allu", 70 , "one of the best", teamObjList[7].id],
	["kioshima", 70 , "the problem", teamObjList[7].id],
	["aizy", 70 , "one of the best", teamObjList[7].id],
	["rain", 70 , "one of the best", teamObjList[7].id],
	["edward", 70 , "one of the best", teamObjList[8].id],
	["Gaurdian", 70 , "one of the best", teamObjList[8].id],
	["seized", 70 , "one of the best", teamObjList[8].id],
	["flamie", 70 , "one of the best", teamObjList[8].id],
	["s1mple", 70 , "one of the best", teamObjList[8].id],
	["shox", 70 , "one of the best", teamObjList[9].id],
	["RpK", 70 , "one of the best", teamObjList[9].id],
	["bodyy", 70 , "one of the best", teamObjList[9].id],
	["SmithZz", 70 , "not a good AWPer", teamObjList[9].id],
	["ScreaM", 70 , "one of the best", teamObjList[9].id]
]

player_list.each do |name, rating, info, team|
	Player.create(name: name, rating: rating, info: info, team_id: team)
end




