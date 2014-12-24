var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res) {
  res.render('index', { title: 'React with DeLorean.js Todo List' });
});

module.exports = router;
