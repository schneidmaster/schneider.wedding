React     = require('react')
Countdown = require('react-count-down')
Gallery   = require('react-image-gallery').default
$         = require('jquery')

module.exports = React.createClass
  displayName: 'Home'

  componentDidMount: ->
    return if typeof(window) is 'undefined'
    fullpage = require('fullpage.js')
    $('#fullpage').fullpage(
      anchors: ['cover', 'details', 'gallery']
      fitToSectionDelay: 250
      responsiveWidth: 800
      navigation: true
      navigationPosition: 'right'
    )

  render: ->
    <div id='fullpage'>
      <div className='section'>
        <div className='content cover'>
          <div className='header'>
            <h1>Korando-Schneider Wedding</h1>
          </div>
          <div className='info'>
            <div>
              <img src={require('img/photos/9.jpg')} alt='Zach + Becca' />
            </div>
            <div>
              <div className='vertical-center'>
                <h2>Zach Schneider</h2>
                <p className='and'>- and -</p>
                <h2>Becca Korando</h2>
                <h3>November 19, 2016</h3>
                <h3>(<Countdown options={endDate: 1479600000000} />)</h3>
              </div>
            </div>
          </div>
          <div className='rsvp'>
            <a href='/rsvp' className='btn'>RSVP</a>
          </div>
        </div>
      </div>
      <div className='section'>
        <div className='content details'>
          <div className='header'>
            <h1>Details</h1>
          </div>
          <div className='info'>
            <div className='flex-columns'>
              <div>
                <h3>
                  <a href='http://www.theweddinggarden.net/#!events/cwi' target='_blank'>The Wedding Garden</a><br />
                  215 East Walnut, Carbondale, IL
                </h3>
                <p className='center'>
                  We invite you to join us at The Wedding Garden right in the heart of Carbondale to celebrate our wedding. The venue features indoor seating, an outdoor area with a bonfire, and a limited open bar.
                </p>
                <img src={require('img/weddinggarden.jpg')} alt='The Wedding Garden' />
              </div>
              <div>
                <h3 className='section-header'>Flights</h3>
                <p className='info-section'>
                  The closest major airport is Lambert-St. Louis International Airport (STL) -- about a two hour drive from Carbondale. You can also find cheap commuter flights from STL to <a href='http://www.wilcoairport.com/' target='_blank'>Williamson County Regional Airport</a> (about twenty minutes from Carbondale) if you don't mind riding on a small Cessna!
                </p>

                <h3 className='section-header'>Hotels</h3>
                <p className='info-section'>
                  Carbondale has a number of affordable hotel options, ranging from the <a href='http://www.super8.com/hotels/illinois/carbondale/super-8-carbondale/hotel-overview' target='_blank'>Super 8</a> at about $65/night to the <a href='http://hamptoninn3.hilton.com/en/hotels/illinois/hampton-inn-carbondale-CRBILHX/index.html' target='_blank'>Hampton Inn</a> at about $130/night. There are also a number of traditional bed-and-breakfasts and Airbnb options in the area, albeit with a somewhat longer drive.
                </p>

                <h3 className='section-header'>Transportation</h3>
                <p className='info-section'>
                  Unfortunately, Uber has not yet seen fit to bestow its presence upon Carbondale. A rental car is highly recommended if it's in your budget. There are a few local cab companies that are all equally terrible; the least bad is Jet Taxi which you can reach at <a href='tel:+16189644412'>(618) 964-4412</a>. Call early and carry cash!
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div className='section'>
        <div className='content gallery'>
          <div className='header'>
            <h1>Zach + Becca</h1>
          </div>
          <div className='gallery-wrapper'>
            <Gallery items={ { original: require("img/photos/#{i}.jpg"), thumbnail: require("img/photos/#{i}.thumb.jpg") } for i in [1..22] } />
          </div>
        </div>
      </div>
    </div>
