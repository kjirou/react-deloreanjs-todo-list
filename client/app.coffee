{Promise} = require 'bluebird'
_ = require 'lodash'
React = require 'react'


exports.App = class App

  constructor: ->

  renderTo: (container) =>
    React.render @rootElement, container

  start: ->
