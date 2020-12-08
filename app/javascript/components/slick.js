import $ from 'jquery';
import 'slick-carousel';

const initCarousel = () => {
  $('.multiple-items').slick({
    infinite: true,
    slidesToShow: 3,
    slidesToScroll: 3
  });

  $('.slider').slick({
    infinite: true,
    slideToShow: 1,
    slideToScroll: 1
  });

  // $('.particip-carousel').slick({
  //   infinite: true,
  //   slidesToShow: 2,
  //   slidesToScroll: 3
  // });

  // $('.particip-carousel').slick({
  //   dots:true
  // });

  $('.particip-carousel').slick({
    dots: true,
    infinite: false,
    speed: 300,
    slidesToShow: 4,
    slidesToScroll: 4,
    responsive: [
      {
        breakpoint: 1024,
        settings: {
          slidesToShow: 3,
          slidesToScroll: 3,
          infinite: true,
          dots: true
        }
      },
      {
        breakpoint: 600,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 2
        }
      },
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1
        }
      }
      // You can unslick at a given breakpoint now by adding:
      // settings: "unslick"
      // instead of a settings object
    ]
  });
};

export { initCarousel };
