import Typed from 'typed.js';

const dynamicText = () => {
  const banner = document.getElementById('bora')
  if (banner) {
    new Typed("#bora", {
      strings: [
        "Bora viajar!",
        "Bora para uma nova aventura!",
        "Bora conhecer o mundo!",
        "Bora conhecer pessoas!",
        "Bora para um trekking!",
        "Bora explorar um lugar novo!",
        "Bora se divertir!",
        "Bora para a balada!",
        "Bora jantar!",
        "Bora para o museu!",
        "Bora beber!",
        "Bora para as compras!",
        "Bora roadtrip!",
        "Bora viver!",
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