React              = require('react')
{Row, Col, Button} = require('react-bootstrap')
Countdown          = require('react-count-down')
Gallery            = require('components/gallery')

module.exports = React.createClass
  displayName: 'Home'

  render: ->
    <div className='container-fluid'>
      <Row className='section cover vertical-align'>
        <Col xs=12>
          <Row>
            <h1>Korando-Schneider Wedding</h1>
          </Row>
          <Row className='row-padding'>
            <Col mdOffset=2 md=4 xs=12>
              <img src={require('img/photos/9.jpg')} alt='Zach + Becca' />
            </Col>
            <Col md=4 xs=12>
              <h2>Zach Schneider</h2>
              <p className='and'>- and -</p>
              <h2>Becca Korando</h2>
              <p className='date'>November 19, 2016</p>
              <div className='countdown'>
                (<Countdown options={endDate: 1479600000000} />)
              </div>
            </Col>
          </Row>
          <Row className='rsvp-btn'>
            <a href='/rsvp'>
              <Button>RSVP</Button>
            </a>
          </Row>
        </Col>
      </Row>

      <Row className='section details vertical-align'>
        <Col xs=12>
          <Row>
            <h1>Details</h1>
          </Row>
          <Row className='info'>
            <Col mdOffset=2 md=3 xs=12 className='left'>
              <h3>
                <a href='http://www.theweddinggarden.net/#!events/cwi' target='_blank'>The Wedding Garden</a><br />
                215 East Walnut, Carbondale, IL
              </h3>
              <p className='center'>
                We invite you to join us at The Wedding Garden right in the heart of Carbondale to celebrate our wedding. The venue features indoor seating, an outdoor area with a bonfire, and an open bar.
              </p>
              <img src={require('img/weddinggarden.jpg')} alt='The Wedding Garden' />
            </Col>
            <Col md=5 xs=12 className='right'>
              <h3>Flights</h3>
              <p>
                The closest major airport is Lambert-St. Louis International Airport (STL) -- about a two hour drive from Carbondale. You can also find cheap commuter flights from STL to <a href='http://www.wilcoairport.com/' target='_blank'>Williamson County Regional Airport</a> (about twenty minutes from Carbondale) if you don't mind riding on a small Cessna!
              </p>

              <h3>Hotels</h3>
              <p>
                Carbondale has a number of affordable hotel options, ranging from the <a href='http://www.super8.com/hotels/illinois/carbondale/super-8-carbondale/hotel-overview' target='_blank'>Super 8</a> at about $65/night to the <a href='http://hamptoninn3.hilton.com/en/hotels/illinois/hampton-inn-carbondale-CRBILHX/index.html' target='_blank'>Hampton Inn</a> at about $130/night. There are also a variety of traditional bed-and-breakfasts and Airbnb options in the area, albeit with a somewhat longer drive.
              </p>

              <h3>Transportation</h3>
              <p>
                Unfortunately, Uber has not yet seen fit to bestow its presence upon Carbondale. A rental car is highly recommended if it's in your budget. There are a few local cab companies that are all equally terrible; the least bad is Jet Taxi which you can reach at <a href='tel:+16189644412'>(618) 964-4412</a>. Call early and carry cash!
              </p>

              <h3>Registry</h3>
              <p>
                We are registered with <a href='http://www.target.com/gift-registry/giftgiver?registryId=i9jjaawpvVC4Imm6HvBl6Q' target='_blank'>Target</a> and <a href='http://www.bedbathandbeyond.com/store/giftregistry/view_registry_guest.jsp?eventType=Wedding&registryId=543533008' target='_blank'>Bed Bath and Beyond</a>.
              </p>
            </Col>
          </Row>
        </Col>
      </Row>

      <Row className='section gallery vertical-align'>
        <Col xs=12>
          <Row>
            <h1>Zach + Becca</h1>
          </Row>
          <Row>
            <Col md=8 mdOffset=2>
              <Gallery />
            </Col>
          </Row>
        </Col>
      </Row>
    </div>
