React    = require('react')
Lightbox = require('react-images').default

module.exports = React.createClass
  displayName: 'Gallery'

  getInitialState: ->
    {
      isOpen: false
      currentImage: 0
    }

  selectImage: (currentImage, e) ->
    e.preventDefault()
    @setState(isOpen: true, currentImage: currentImage)

  render: ->
    images = ({ src: require("img/photos/#{i}.jpg"), thumbnail: require("img/photos/#{i}.thumb.jpg") } for i in [1..22])
    
    <div>
      <div className='gallery-wrapper'>
        {for img, idx in images
          <div key=idx style={backgroundImage: "url(#{img.thumbnail})"} onClick={@selectImage.bind(@, idx)} className='gallery-thumb' />
        }
        <div className='gallery-thumb spacer' />
        <div className='gallery-thumb spacer' />
      </div>
      <Lightbox 
        backdropClosesModal=true 
        currentImage={@state.currentImage} 
        images={images} 
        isOpen={@state.isOpen}
        onClickPrev={=> @setState(currentImage: @state.currentImage - 1)} 
        onClickNext={=> @setState(currentImage: @state.currentImage + 1)} 
        onClose={=> @setState(currentImage: 0, isOpen: false)} 
        />
    </div>