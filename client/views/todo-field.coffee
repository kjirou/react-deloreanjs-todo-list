_ = require 'lodash'
React = require 'react'
{DOM} = React


exports.TodoFieldView =
React.createClass
  displayName: 'TodoFieldView'

  render: ->
    React.createElement(
      'div'
      { className: 'ui fluid input' }
      DOM.input { type: 'text', placeholder: 'Input your todo' }
    )
