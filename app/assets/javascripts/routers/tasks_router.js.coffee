class TodoList.Routers.Tasks extends Backbone.Router
  routes: 
    'tasks': 'index'
    'tasks/:id': 'show'
    '*path': 'redirect_to_tasks'

  initialize: ->
    @collection = new TodoList.Collections.Tasks
    @collection.fetch(reset: true)

  redirect_to_tasks: ->
    Backbone.history.navigate("tasks", true)

  index: ->
    view = new TodoList.Views.TasksIndex collection: @collection
    $('#app').html(view.render().el)

  show: (id) ->
    task = @collection.get(id)
    view = new TodoList.Views.TasksShow model: task
    $('#app').html(view.render().el)