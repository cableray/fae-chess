Meteor.autosubscribe ->
  game_id=Session.get "game_id"
  Meteor.subscribe("turns", game_id) if game_id
  Meteor.subscribe "games"
  Meteor.subscribe "pieces"
  Meteor.subscribe "users"
