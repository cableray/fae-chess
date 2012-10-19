window.Helpers=
  cookie:(name,value,options)->
    options = $.extend({stringify:true,also_session:true}, options)
    obj_value=value
    if options.stringify 
      if options.raw != false then options.raw=true
      value=JSON.stringify(value)
    $.cookie(name,value,options)
    Session.set(name,obj_value)
  
  login_user_cb:(error,user)->
    if user and not error
      Helpers.cookie("current_user",user)
  
  login_as:(username,password)->
    Meteor.call('login_as',username,password,Helpers.login_user_cb)
  
  logout:->
    Helpers.cookie("current_user",null,{stringify:false})