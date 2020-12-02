import Typed from 'typed.js';

const dynamicText = () => {
  const banner = document.getElementById('bora')
  if (banner) {
    new Typed("#bora", {
      strings: [
        "viajar!",
        "conhecer o mundo!",
        "conhecer pessoas!",
        "explorar um lugar novo!",
        "se divertir!",
        "jantar!",
        "para uma nova aventura!",
      ],
      typeSpeed: 85,
      loop: true,
    });
  }
};

export { dynamicText };