const path = require('path');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const autoprefixer = require('autoprefixer');
const rucksack = require('rucksack-css');
const { CleanWebpackPlugin } = require('clean-webpack-plugin');

module.exports = {
    entry: "./src/app.js",
    output: {
      path: path.resolve(__dirname, "public"),
      filename: "app.js"
    },
    devtool: "source-map",
    devServer: {
      contentBase: path.join(__dirname, 'public'),
      port: 9138,
      open: true,
      liveReload: true
    },
    plugins: [
      new MiniCssExtractPlugin({
        // Options similar to the same options in webpackOptions.output
        // all options are optional
        filename: 'style.css',
        chunkFilename: 'all',
        ignoreOrder: false, // Enable to remove warnings about conflicting order
      }),
      new CleanWebpackPlugin(),
    ],
    module: {
        rules: [
          {
              test: /\.scss$/,
              use: [
              {
                loader: MiniCssExtractPlugin.loader
              },
              {
                  // Translates CSS into CommonJS
                  loader: "css-loader",
                  options: {
                    sourceMap: true,
                    root: path.resolve(__dirname),
                  },
              },
              {
                loader: 'postcss-loader',
                options: {
                  ident: 'postcss',
                  plugins: () => [
                    // autoprefixer(),
                    rucksack()
                  ],
                  sourceMap: true,
                },
              }, {
                // Compiles Sass to CSS
                loader: "sass-loader",
                options: {
                  outputStyle: 'compressed',
                  sourceMap: true,
                  // includePaths: [
                  //   './src/scss',
                  // ],
                }
              }]
          },
          {
            test: /\.(js|jsx)$/,
            exclude: /(node_modules)/,
            use: {
              loader: 'babel-loader',
              query: {
                  presets: ['es2015']
              }
            }
          },
          {
            test: /\.(woff|woff2|eot|ttf|otf)$/,
            loader: "file-loader",
            options: {
              outputPath: 'assets/fonts/',
              name: '[name].[ext]'
            }
          },
          {
            test: /\.(png|gif|jpg|jpeg|svg)$/,
            loader: "file-loader",
            options: {
              outputPath: 'assets/images/',
              name: '[name].[ext]'
            }
          },
          {
            test: /\.(html)$/,
            loader: "file-loader",
            options: {
              name: 'index.html'
            }
          }
          //need to copy backup image and feedData file
        ]
    }
};