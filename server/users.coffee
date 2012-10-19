Users=new Meteor.Collection("users")
Meteor.publish "users", ->
  Users.find {}

Meteor.methods
  login_as:(username, password)->
    user=Users.findOne {username:username, password:password}
    return if user then user else false