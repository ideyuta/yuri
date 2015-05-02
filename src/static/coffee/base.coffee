'use strict'

$ = require 'jquery'
Masonry = require 'masonry-layout'
ImagesLoaded = require 'imagesloaded'


class MasonryView

  constructor: (el) ->
    @$el = document.querySelector el
    ImagesLoaded @$el, =>
      $('.Post').css 'display', 'block'
      $('.Loader').css 'display', 'none'
      new Masonry @$el,
        columnWidth: 0
        itemSelector: '.Post'

class Copyright

  constructor: ->
    @$el = $('.copyright-year')
    data = new Date()
    @$el.html data.getFullYear()


$ ->
  yuri.masonryView = new MasonryView '.Posts'
  yuri.copyright = new Copyright()

  return
