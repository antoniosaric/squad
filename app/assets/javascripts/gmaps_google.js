// var handler = Gmaps.build('Google');
// handler.buildMap({ internal: {id: 'geolocation'} }, function(){
//   // be aware chrome >= 50 requires https for geolocation to work
//   if(navigator.geolocation)
//     navigator.geolocation.getCurrentPosition(displayOnMap);
// });
//
// function displayOnMap(position){
//   var marker = handler.addMarker({
//     lat: position.coords.latitude,
//     lng: position.coords.longitude
//   });
//   handler.map.centerOn(marker);
// };
//


var handler = Gmaps.build('Google');
var markers = [
      ['London Eye, London', 51.503454,-0.119562],
      ['Palace of Westminster, London', 51.499633,-0.124755]
  ];
handler.buildMap({ internal: {id: 'geolocation'} }, function(){
  // for( i = 0; i < markers.length; i++ ) {
  //      var position = new google.maps.LatLng(markers[i][1], markers[i][2]);
  //      bounds.extend(position);
  //      markers = new google.maps.Marker({
  //          position: position,
  //          map: map,
  //          title: markers[i][0]
  //      });
  // be aware chrome >= 50 requires https for geolocation to work
  markers = handler.addMarkers([
  {
    "lat": 37.789527,
    "lng": -122.394276,
    "picture": {
      "url": "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png",
      "width":  36,
      "height": 36
    },
    "infowindow": "Global AI Hackathon Fri, Jun 23, 2017, 7:00 PM – Sun, Jun 25, 2017, 6:00 PM PDT"
  },

  {
    "lat": 37.7859008,
    "lng":  -122.4108333,
    "picture": {
      "url": "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png",
      "width":  36,
      "height": 36
    },
    "infowindow": "DocuSign Momentum Hackathon 2017 Tuesday, May 2, 2017 | Wednesday, May 3, 2017"
  },

  {
    "lat": 37.7836966,
    "lng":  -122.4089664,
    "picture": {
      "url": "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png",
      "width":  36,
      "height": 36
    },
    "infowindow": "Blockchain Hackathon | Bitcoin for your Thoughts?Fri, Mar 24, 2017, 7:00 PM – Sun, Mar 26, 2017, 7:30 PM PDT "
  },

  {
    "lat": 37.7844452,
    "lng": -122.4049522,
    "picture": {
      "url": "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png",
      "width":  36,
      "height": 36
    },
    "infowindow": "Ctrl Alt Delete Hate Hackathon Sat, Apr 1, 2017, 9:00 AM – Sun, Apr 2, 2017, 4:00 PM PDT"

  },



]);
  if(navigator.geolocation)
    navigator.geolocation.getCurrentPosition(displayOnMap);

});

function displayOnMap(position){
  var marker = handler.addMarker({
    lat: position.coords.latitude,
    lng: position.coords.longitude
  });
  handler.map.centerOn(marker);
};
