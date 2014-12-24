{Flux} = require 'delorean'
React = require 'react'
{DOM} = React


exports.TodoFieldView =
React.createClass
  displayName: 'TodoFieldView'

  getInitialState: ->
    todoInput: ''

  onTodoInputChange: (e) ->
    @setState todoInput: e.target.value

  onTodoInputKeyDown: (e) ->
    if e.keyCode is 13
      @props.deps.ActionCreator.addTodo @state.todoInput
      @setState todoInput: ''

  render: ->
    inputElement = DOM.input
      type: 'text'
      placeholder: 'Input your todo'
      # このへんの設定は、以下の記事がとても参考になります
      # http://qiita.com/koba04/items/40cc217ab925ef651113
      value: @state.todoInput
      onChange: @onTodoInputChange
      onKeyDown: @onTodoInputKeyDown

    React.createElement(
      'div'
      { className: 'ui fluid input' }
      inputElement
    )
