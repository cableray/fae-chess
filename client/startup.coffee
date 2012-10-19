Meteor.startup ->
  if user=$.cookie('current_user')
    user=JSON.parse(user)
    Helpers.login_as(user.username,user.password)
  Backbone.history.start {pushState:true}