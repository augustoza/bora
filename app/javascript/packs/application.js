// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require('algoliasearch');
require('places.js');

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import { initStarRating } from '../plugins/init_star_rating';

import { initChatroomCable } from '../channels/chatroom_channel'

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { dynamicText } from "../components/banner";
import { initMapbox } from '../plugins/init_mapbox';
import { initCarousel } from "../components/slick";
import { initSelect2 } from '../components/init_select2';
import { initFacebook } from '../plugins/init_facebook';
import { initAutocomplete} from '../components/search';
import { flatpicker } from "../plugins/flatpickr";

document.addEventListener('turbolinks:load', () => {
  initStarRating();
  initMapbox();
  dynamicText();
  initSelect2();
  initFacebook();
  flatpicker();
  // Call your functions here, e.g:
  initChatroomCable();
  initCarousel();
  initAutocomplete();
});
//TODO ----- SELECT2 COUNTRIES