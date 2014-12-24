_ = require 'lodash'
assert = require 'power-assert'

{App} = require 'client/app'


describe 'client/app module', ->

  describe 'App class', ->

    it 'can create a instance', ->
      app = new App
      assert app instanceof App
      assert _.size(app.deps) > 0
      assert app._rootElement

    it 'createSingletons', ->
      objs = App.createSingletons()
      assert 'todoListStore' of objs
      assert 'ActionCreator' of objs
