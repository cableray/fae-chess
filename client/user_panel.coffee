Template.user_panel.user = ->
  user=Session.get "current_user"
  if user then user else null

Template.login_form.events= 
  'submit': (event) ->
    event.preventDefault()
    console.log "login attempted"
    #console.log event
    Helpers.login_as($('#username').val(),$('#password').val())
    return

Template.user_panel.events=
  'click #logout': (event)->
    Helpers.logout()