class TodoList.Views.TasksIndex extends Backbone.View
  el: '#app'
  template: JST['tasks/index']
  initialize: ->
  	this.collection.bind 'reset', this.render, this
  render: ->
  	$('body').html(this.template())

  	this.collection.each (task) =>
  		view = new TodoList.Views.TasksItem model: task
  		$('#tasks').append(view.render())