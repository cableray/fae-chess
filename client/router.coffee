class GameRouter extends Backbone.Router
  routes:
    "lobby": "lobby"
    "game/:game_id": "game"
    "game/:game_id/:turn_number":"game"
    "pieces": "pieces"
  lobby: ->
    Session.set "current_view", "lobby"
  game: (game_id,turn_number) ->
    Session.set "game_id", game_id
    if not turn_number then turn_number= -1
    Session.set "turn_number", turn_number
    Session.set "current_view", "game"
  view_game: (game_id)->
    this.navigate "game/"+game_id, true
  pieces: ->
    Session.set "current_view", "pieces"

window.Router= new GameRouter