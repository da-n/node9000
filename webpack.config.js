var webpack = require('webpack')
var path = require('path')

module.exports = {
  entry: path.resolve(__dirname, 'index.js'),

  output: {
    filename: 'bundle.js',
    path: path.resolve(__dirname, 'public', 'build')
  },

  module: {
    loaders: [
      { test: /\.js$/, exclude: /node_modules/, loader: 'babel-loader?presets[]=es2015&presets[]=react' }
    ]
  },

  // add this handful of plugins that optimize the build
  // when we're in production
  plugins: process.env.NODE_ENV === 'production' ? [
    new webpack.optimize.DedupePlugin(),
    new webpack.optimize.OccurrenceOrderPlugin(),
    new webpack.optimize.UglifyJsPlugin()
  ] : [],
}
