Template.games.games = ->
  Games.find({})

Template.game_row.open_status = ->
  "unknown"  

Template.game_row.events =
  "click": ->
    console.log "clicked"
    console.log this._id
    Router.view_game(this._id)
    Meteor.flush
