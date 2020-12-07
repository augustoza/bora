import $ from 'jquery';
import 'slick-carousel';

const initCarousel = () => {
  $('.multiple-items').slick({
    infinite: true,
    slidesToShow: 3,
    slidesToScroll: 3
  });

  // $('.particip-carousel').slick({
  //   infinite: true,
  //   slidesToShow: 2,
  //   slidesToScroll: 3
  // });

  $('.particip-carousel').slick({
    dots:true
  });
};

export { initCarousel };
