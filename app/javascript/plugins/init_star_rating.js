import "jquery-bar-rating";
import $ from 'jquery';

const initStarRating = () => {
  $('#review_tour_rating').barrating({
    theme: 'css-stars',
    onSelect: (value, text, event) => {
      const form = $("form.review_form"); // We are selecting the form on the page with its class
      form.submit(); // We submit the form with javascript
    }
  });
};

export { initStarRating };
