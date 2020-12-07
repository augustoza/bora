const autocomplete = () => {
    const placesAutocomplete = places({
        appId: ENV['ALGOLIA_ID'],
        apiKey: ENV['PLACES_API_KEY]',
        container: document.querySelector('#address')
      });
}
