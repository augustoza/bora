import Typed from 'typed.js';

const dynamicText = () => {
  new Typed('#typed-text', {
    strings: [
      "viajar!",
      "conhecer o mundo!",
      "conhecer pessoas!",
      "explorar um lugar novo!",
      "se divertir!",
      "jantar!",
      "para uma nova aventura!"
    ],
    typeSpeed: 30,
    loop: true,
  });
};

export {dynamicText};