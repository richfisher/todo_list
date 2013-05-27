class TodoList.Views.TasksIndex extends Backbone.View
  el: '#app'
  template: JST['tasks/index']
  initialize: ->
  	@collection.bind 'reset', @render, @
  render: ->
  	$('body').html(@template())

  	@collection.each (task) =>
  		view = new TodoList.Views.TasksItem model: task
  		$('#tasks').append(view.render())