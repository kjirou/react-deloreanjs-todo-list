_ = require 'lodash'
React = require 'react'
{DOM} = React

{TodoFieldView} = require 'client/views/todo-field'


exports.ScreenView =
React.createClass
  displayName: 'ScreenView'

  render: ->
    React.createElement(
      'div'
      { className: 'ui page grid' }
      DOM.h1 null, 'React - DeLorean.js Todo List'
      DOM.div { className: 'ui divider' }, ''
      React.createElement TodoFieldView, key: 'todo-field'
    )
