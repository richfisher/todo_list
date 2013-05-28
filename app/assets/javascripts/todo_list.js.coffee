window.TodoList =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
  	new TodoList.Routers.Tasks()
  	Backbone.history.start(pushState: true)

$(document).ready ->
  TodoList.initialize()
