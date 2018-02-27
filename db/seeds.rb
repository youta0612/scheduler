# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do |i|
    Team.create(name:"team #{i+1}", password:"pass")
    Member.create(name:"member #{i+1}", skill_level:i+1, team_id:i+1)
    Game.create(team_id:i+1, date:"201802141#{i+1}00", place:"place #{i+1}", opponent:"opponent #{i+1}")
    Participant.create(game_id:i+1, member_id:i+1, participation_flag:1, comment:"comment #{i+1}")
    Makedgame.create(game_id:i+1, member_id:i+1, date:"201802141#{i+1}00", place:"place #{i+1}")
end