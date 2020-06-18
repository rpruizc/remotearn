const purgecss = require('@fullhuman/postcss-purgecss')
const cssnano = require('cssnano')

module.exports = {
  plugins: [
    require('autoprefixer'),
    cssnano({
      preset: 'default'
    }),
    purgecss({
      content: ['./app/views/**/*.html.erb'],
      defaultExtractor: content => content.match(/[\w-/:]+(?<!:)/g) || []
    }),
    require('postcss-import'),
    require('tailwindcss'),
    require('postcss-flexbugs-fixes'),
    require('postcss-preset-env')({
      autoprefixer: {
        flexbox: 'no-2009'
      },
      stage: 3
    })
  ]
}
