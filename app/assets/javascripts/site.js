var ready;
ready = function() {
  var map = L.mapbox.map('map', 'sarriagada.j4p9400k', {
    accessToken: 'pk.eyJ1Ijoic2FycmlhZ2FkYSIsImEiOiJPMFJEZy1BIn0.6iTs7zB1bZisiF07DGkwfA'
  });
  map.scrollWheelZoom.disable();
};

$(document).ready(ready);
$(document).on('page:load', ready);