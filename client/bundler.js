require('client/stylesheets/style.styl');

var App = require('client/app').App;


window.addEventListener('load', function(){
  var app = new App;
  window._app = app;
  console.log('Started app at', new Date);
  //var container = window.document.querySelector('.js-game-container');
  //app.renderTo(container);
  //app.start().then(function(){
  //  console.log('Started game at', new Date);
  //});
});
