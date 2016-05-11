React = require('react')
Html  = require('react-html-document')

require('scss/app')
require('img/favicon.ico')

module.exports = React.createClass
  displayName: 'Root'

  render: ->
    pathKey = @props.location.pathname.replace(/\//g, '').toLowerCase()
    
    # Set the description and image from the path.
    description = 'Korando - Schneider Wedding, November 19, 2016'
    image = ''

    metatags = [
      { name: 'viewport', content: 'width=device-width, initial-scale=1, maximum-scale=1' }
      { name: 'description', content: description }
      { name: 'og:url', content: 'https://schneider.wedding' }
      { name: 'og:type', content: 'website' }
      { name: 'og:title', content: 'Korando-Schneider Wedding' }
      { name: 'og:description', content: description }
      { name: 'og:image', content: image }
      { name: 'twitter:card', content: 'summary_large_image' }
      { name: 'twitter:site', content: '@schneidmaster' }
      { name: 'twitter:title', content: 'Korando-Schneider Wedding' }
      { name: 'twitter:description', content: description }
      { name: 'twitter:image', content: image }
    ]

    <Html title='Korando-Schneider Wedding' metatags={metatags} scripts=['/production.min.js'] stylesheets=['/production.min.css']>
      <div id='app'></div>
    </Html>
