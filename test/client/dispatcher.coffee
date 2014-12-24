_ = require 'lodash'
assert = require 'power-assert'

dispatcher = require 'client/dispatcher'
{TodoListStore} = require 'client/stores/todo-list'


describe 'client/dispatcher module', ->

  describe 'Dispatcher class', ->

    it 'can create a class', ->
      Dispatcher = dispatcher.create
        todoListStore: new TodoListStore
