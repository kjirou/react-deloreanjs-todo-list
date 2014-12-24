domino = require 'domino'
_ = require 'lodash'
assert = require 'power-assert'
React = require 'react'

{App} = require 'client/app'


describe 'client/app module', ->

  describe 'App class', ->

    it 'can create a instance', ->
      app = new App
      assert app instanceof App
      assert _.size(app.deps) > 0
      assert app.rootElement

    it 'createSingletons', ->
      objs = App.createSingletons()
      assert 'todoListStore' of objs
      assert 'ActionCreator' of objs


  describe '描画と機能のテスト', ->

    it 'todoを入力したらアイテムが表示される', ->
      # querySelector 的なのをするのって、普通何使うんだろう？
      app = new App
      html = React.renderToString app.rootElement
      todoItems = domino.createWindow(html).document.querySelector 'ul.ui.list li'
      assert todoItems is undefined

      app.deps.ActionCreator.addTodo 'Abc'
      html = React.renderToString app.rootElement
      todoItems = domino.createWindow(html).document.querySelector 'ul.ui.list li'
      assert todoItems
