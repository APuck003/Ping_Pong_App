# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Player.destroy_all
Game.destroy_all
Comment.destroy_all
PlayerGame.destroy_all


user1 = User.create(username: 'ryan', password: '123', password_confirmation: '123')
user2 = User.create(username: 'francisco', password: '456', password_confirmation: '456')

player1 = Player.create([{name: 'Joe', alias: 'Iceman'}])
player2 = Player.create([{name: 'Ted', alias: 'Fireman'}])
player3 = Player.create([{name: 'Max', alias: 'Stone'}])
player4 = Player.create([{name: 'Ben', alias: 'Wind'}])
player5 = Player.create([{name: 'Dan', alias: 'Rain'}])

game1 = Game.create(location:'Tokyo', ranked:true)
game2 = Game.create(location:'Houston', ranked:true)
game3 = Game.create(location:'Spain', ranked:false)
game4 = Game.create(location:'Dallas', ranked:false)
game5 = Game.create(location:'Austin', ranked:true)

comment1 = Comment.create(description:'Hey this is a really cool game', game_id: game1.id, user_id: user1.id)
comment2 = Comment.create(description:'Another awesome pong game', game_id: game2.id, user_id: user2.id)
comment3 = Comment.create(description:'Look ma no hands', game_id: game3.id, user_id: user1.id)
comment4 = Comment.create(description:'Best Pong Game EVER', game_id: game4.id, user_id: user2.id)
comment5 = Comment.create(description:'Look at this awesome comment', game_id: game5.id, user_id: user1.id)

playergame1 = PlayerGame.create(player_id: 1, game_id: 1, score: 11)
playergame2 = PlayerGame.create(player_id: 2, game_id: 1, score: 10)
playergame2 = PlayerGame.create(player_id: 4, game_id: 2, score: 4)
playergame2 = PlayerGame.create(player_id: 2, game_id: 2, score: 11)
playergame2 = PlayerGame.create(player_id: 3, game_id: 3, score: 5)
playergame2 = PlayerGame.create(player_id: 5, game_id: 3, score: 11)
playergame2 = PlayerGame.create(player_id: 5, game_id: 4, score: 8)
playergame2 = PlayerGame.create(player_id: 1, game_id: 4, score: 11)
playergame2 = PlayerGame.create(player_id: 2, game_id: 5, score: 9)
playergame2 = PlayerGame.create(player_id: 5, game_id: 5, score: 11)
