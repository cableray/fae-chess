Games = new Meteor.Collection("games")
Turns = new Meteor.Collection("turns")
Pieces = new Meteor.Collection("pieces")

Meteor.publish "games", ->
  Games.find {}

Meteor.publish "turns", (game_id) ->
  Turns.find { game_id: game_id }

Meteor.publish "pieces", ->
  Pieces.find {}