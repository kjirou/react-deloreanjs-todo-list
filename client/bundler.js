require('client/stylesheets/style.styl');

var App = require('client/app').App;


window.addEventListener('load', function(){
  var app = new App;
  window._app = app;
  var container = window.document.querySelector('.js-app-container');
  app.renderTo(container);
  console.log('Started app at', new Date);
});
