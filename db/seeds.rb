# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
banzenas=[{name: "Mobil", description: "", address: "Rabaa Al Adaweyah Nasr City, Cairo Governorate", telephone: "02 22615171", longitude: 30.067966, latitude: 31.320828, has_80?: false, has_90?: false, has_92?: true, has_95?: true, has_gas?: false, has_solar?: false},
{name: "Caltex", description: "", address: "Al Manteqah Al Oula Nasr City, Cairo Governorate", telephone: "02 22606707", longitude: 30.053747, latitude: 31.338505, has_80?: false, has_90?: false, has_92?: true, has_95?: true, has_gas?: false, has_solar?: false}]
banzenas.each do |dic|
	Banzena.create!(dic)
end