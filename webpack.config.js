var pathModule = require('path');
var webpack = require('webpack');


var ROOT = __dirname;

// 絶対パスではダメだった
var PUBLIC_BUILD_ROOT = './public/build';


module.exports = {
  entry: {
    app: './client/bundler.js',
    vendor: [
      'bluebird',
      'delorean',
      'lodash',
      'react'
    ]
  },

  output: {
    filename: PUBLIC_BUILD_ROOT + '/bundle.js'
  },

  module: {
    loaders: [
      { test: /\.coffee$/, loader: 'coffee' },
      { test: /\.css$/   , loader: 'style!css' },
      { test: /\.styl$/  , loader: 'style!css!stylus'}
    ]
  },

  resolve: {
    root: [
      ROOT
    ],
    extensions: ['', '.coffee', '.js']
  },

  plugins: [
    new webpack.optimize.CommonsChunkPlugin('vendor', PUBLIC_BUILD_ROOT + '/vendor.bundle.js')
  ]
};
