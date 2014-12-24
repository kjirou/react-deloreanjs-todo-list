gulp = require 'gulp'
webpack = require 'gulp-webpack'
originalWebpack = require 'webpack'
webpackConfig = require './webpack.config.js'


root = __dirname


gulp.task 'webpack', ->
  gulp.src webpackConfig.entry.app
    .pipe webpack webpackConfig, originalWebpack
    .pipe gulp.dest root
