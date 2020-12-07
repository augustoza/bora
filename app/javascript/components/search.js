require('places.js');
const autocomplete = () => {
    //const places = .initPlaces(ENV['ALGOLIA_ID'], ENV['PLACES_API_KEY']);
    const placesAutocomplete = places({
        appId: "EXWFO1HSPR",
        apiKey: "b4753787093980ee5d50021bd93fdd08",
        container: document.querySelector('#address')
      });
    const $address = document.querySelector('#address-value')
    placesAutocomplete.on('change', function(e) {
    $address.textContent = e.suggestion.value
  });
  placesAutocomplete.on('clear', function() {
    $address.textContent = 'none';
  });
}
export {autocomplete};