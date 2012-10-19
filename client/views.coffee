Template.main_view.view = ->
  switch Session.get("current_view")
    when "game"
      return Template.game_view()
    when "pieces"
      return Template.pieces_view()
    else
      return Template.lobby()
  
Handlebars.registerHelper "print_list", (data, seperator, options) ->
  data.join seperator

Handlebars.registerHelper "view_is", (view, options) ->
  Session.get('current_view')==view