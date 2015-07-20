function Slider(sliderBlock, buttonBlock) {
  this.interv;
  this.offset = 0;
  this.delay = 4000;
  this.currentNumber = 1;
  this.countImg = sliderBlock.find('img').length;
  this.widthImg = sliderBlock.find('img').first().width();
  this.buttons = buttonBlock;
  this.sliderBlock = sliderBlock;
  this.init();
}

Slider.prototype.init = function() {
  this.initButtons();
  this.initImages();
  this.onClick();
  this.interv = setInterval(this.steps.bind(this), this.delay);
}

Slider.prototype.initButtons = function() {
  this.buttons.find('li').each(function(index) {
    $(this).attr('data-button', index);
  })
  this.buttons.find('li').first().addClass('active');
}

Slider.prototype.initImages = function() {
  this.sliderBlock.find('li').each(function(index) {
    $(this).attr('data-number', index);
  })
  this.sliderBlock.find('li').first().addClass('current-image');
}

Slider.prototype.onClick = function() {
  var _that = this;
  this.buttons.on('click', 'li', function() {
    clearInterval(_that.interv);
    var stepUp = parseInt($(this).attr('data-button'), 10);
    _that.setPositionSlider(stepUp);
    $('.active').removeClass('active');
    $(this).addClass('active');
    $('.current-image').removeClass('current-image');
    _that.sliderBlock.find('li').eq(parseInt($(this).attr('data-button'), 10)).addClass('current-image');
    _that.currentNumber = stepUp + 1;
    _that.interv = setInterval(_that.steps.bind(_that), _that.delay);
  });
}

Slider.prototype.changeImageClass = function(){
  var currentElem = $('.current-image');
  currentElem.next().addClass('current-image');
  currentElem.removeClass('current-image');
}

Slider.prototype.setImage = function() {
  var _that = this;
  var widthForStep = this.widthImg * this.countImg;
  if(!$('.current-image').next().length) {
    this.sliderBlock.find('li').first().clone().appendTo(this.sliderBlock.find('ul'));
    this.changeImageClass();
    this.sliderBlock.find('ul').animate({ left: -widthForStep}, {
      complete: function() {
        _that.sliderBlock.find('li:not(.current-image)').clone().appendTo(_that.sliderBlock.find('ul'));
        $('.current-image').prevAll().remove();
        _that.sliderBlock.find('ul').css('left', 0);
        _that.changeImageClass();
        _that.sliderBlock.find('li').first().remove();
        _that.currentNumber = 1;
      }
    });

  } else {
    this.offset = this.currentNumber * this.widthImg;
    this.sliderBlock.find('ul').animate({ left: -this.offset });
    this.changeImageClass();
    this.currentNumber++;
  }
}

Slider.prototype.setButton = function() {
  $('.active').removeClass('active');
  this.buttons.find('li').eq(this.getPositionSlider()).addClass('active');
}

Slider.prototype.steps = function() {
  this.setImage();
  this.setButton();
}

Slider.prototype.setPositionSlider = function(pos) {
  this.sliderBlock.find('ul').animate({left: -pos * this.widthImg});
}

Slider.prototype.getPositionSlider = function() {
  return parseInt($('.current-image').attr('data-number'), 10);
}

