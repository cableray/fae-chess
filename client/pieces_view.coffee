Template.pieces_list.pieces= ->
  Pieces.find({})

Template.piece_editor.piece= ->
  id=Session.get("selected_piece_id")
  if id=="new"
    {}
  else
    Pieces.findOne({_id:id}) || {}

Template.piece_editor.events=
  "submit form": (event)->
    event.preventDefault()
    document=
      name: $("#piece_name").val()
      letter: $('#piece_letter').val()
      set: $('#piece_set').val()
    id=Session.get("selected_piece_id")
    if id=='new'
      new_id=Pieces.insert(document)
      Session.set("selected_piece_id", new_id)
    else if id
        Pieces.update({_id:id},{$set:document})
  
Template.pieces_view.events=
  "click button#new_piece": ->
     Session.set("selected_piece_id", "new")
     $('#piece_name').focus(true)
     $('#piece_name').select(true)

Template.piece_row.selected= ->
  Session.get("selected_piece_id")==this._id

Template.piece_row.events=
  "click": ->
    Session.set("selected_piece_id", this._id)