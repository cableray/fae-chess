Template.game_view.status = ->
  game_id=Session.get("game_id")
  game_id=0 unless game_id
  Games.find({_id:game_id })

Template.turn_list.turns = ->
  Turns.find {}, {sort:{number:1}}

Template.game_view.latest_turn = ->
  Turns.findOne {game_id:Session.get('game_id')}, {sort:{number:-1}}

Template.game_view.current_turn = ->
  turn=Session.get('turn_number')
  if turn == -1
    return this.latest_turn()
  else
    Turns.findOne {game_id:Session.get('game_id'), number:turn}

Template.game_view.events=
  "click button#to_lobby": ->
    Router.navigate "lobby", true