var ready;
ready = function() {
  if ($('#map').length > 0){
    var map = L.mapbox.map('map', 'sarriagada.j4p9400k', {
      accessToken: 'pk.eyJ1Ijoic2FycmlhZ2FkYSIsImEiOiJPMFJEZy1BIn0.6iTs7zB1bZisiF07DGkwfA'
    });
    map.scrollWheelZoom.disable();
  }

  // products
  var $grid = $('.lista-productos');
  $grid.shuffle({
      itemSelector: '.product'
  });
  $grid.on('done.shuffle', function() {
    console.log('Finished initializing shuffle!');
  });
  $('.fitros-productos a').click(function (e) {
      e.preventDefault();
      $('.fitros-productos a').removeClass('active');
      $(this).addClass('active');
      var groupName = $(this).attr('data-group');
      console.log(groupName);
      $grid.shuffle('shuffle', groupName );
  });
};

$(document).ready(ready);
$(document).on('page:load', ready);