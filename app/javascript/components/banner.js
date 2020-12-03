import Typed from 'typed.js';

const dynamicText = () => {
  const banner = document.getElementById('bora')
  if (banner) {
    new Typed("#bora", {
      strings: [
        "Bora viajar!",
        "Bora conhecer o mundo!",
        "Bora conhecer pessoas!",
        "Bora explorar um lugar novo!",
        "Bora se divertir!",
        "Bora jantar!",
        "Bora para uma nova aventura!",
      ],
      typeSpeed: 85,
      loop: true,
      smartBackspace: true,
      backSpeed: 30,
      showCursor: false,
    });
  }
};

export { dynamicText };