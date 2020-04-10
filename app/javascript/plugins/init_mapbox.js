import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/naheul/ck8t9rcbl06uv1iqovmw52jk7'

    });
  }
};


const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this

    // Create a HTML element for your custom marker
      // const element = document.createElement('div');
      // element.className = 'marker';
      // element.style.backgroundImage = `url('${marker.image_url}')`;
      // element.style.backgroundSize = 'contain';
      // element.style.width = '25px';
      // element.style.height = '25px';


    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])

      .setPopup(popup) // add this
      .addTo(map);
  });
};

export { initMapbox };
