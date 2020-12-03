import $ from 'jquery';
import 'slick-carousel';

const initCarousel = () => {
  $('.multiple-items').slick({
    infinite: true,
    slidesToShow: 3,
    slidesToScroll: 3
  });
};

export { initCarousel };
