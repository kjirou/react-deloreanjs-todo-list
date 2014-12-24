_ = require 'lodash'
assert = require 'power-assert'

{TodoListStore} = require 'client/stores/todo-list'


describe 'client/stores/todo-list module', ->

  describe 'TodoListStore class', ->

    it 'can create a instance', ->
      new TodoListStore
