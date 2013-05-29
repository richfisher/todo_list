class TodoList.Routers.Tasks extends Backbone.Router
  routes: 
    'tasks': 'index'
    'tasks/:id': 'show'

  initialize: ->
    @collection = new TodoList.Collections.Tasks
    @collection.fetch(reset: true)

  index: ->
    view = new TodoList.Views.TasksIndex collection: @collection
    $('#app').html(view.render().el)

  show: (id) ->
    task = @collection.get(id)
    view = new TodoList.Views.TasksShow model: task
    $('#app').html(view.render().el)