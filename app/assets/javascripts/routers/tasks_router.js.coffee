class TodoList.Routers.Tasks extends Backbone.Router
	routes: 
		'tasks': 'index'
		'tasks/:id': 'show'

	index: ->
		tasks = new TodoList.Collections.Tasks
		new TodoList.Views.TasksIndex collection: tasks
		tasks.fetch(reset: true)

	show: (id) ->
		alert "task #{id}"