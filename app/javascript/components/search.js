const autocomplete = () => {
    const placesAutocomplete = places({
        appId: ENV['ALGOLIA_ID'],
        apiKey: ENV['PLACES_API_KEY'],
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
