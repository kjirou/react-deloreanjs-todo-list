require('client/stylesheets/style.styl');

var App = require('client/app').App;


window.addEventListener('load', function(){
  var app = new App;
  window._app = app;
  app.renderTo(document.body);
  console.log('Started app at', new Date);
});
