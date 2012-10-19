Template.chess_board.positions= ->
  [[{position:'a1', piece_id:"f86dc499-95c1-4fb2-b686-9b98f70034e2"},{position:'a2', piece_id:"43a47a94-5e07-41da-81d4-542564b26cde"},{position:'a3', piece_id:"f86dc499-95c1-4fb2-b686-9b98f70034e2"}],
    [{position:'b1', piece_id:""},{position:'b2', piece_id:""},{position:'b3', piece_id:""}],
    [{position:'c1', piece_id:"f86dc499-95c1-4fb2-b686-9b98f70034e2"},{position:'c2', piece_id:"43a47a94-5e07-41da-81d4-542564b26cde"},{position:'c3', piece_id:"f86dc499-95c1-4fb2-b686-9b98f70034e2"}],
    ]

Template.position.piece= ->
  Pieces.findOne({_id:this.piece_id})||{}

Template.position.events=
  'click': ->
    console.log this