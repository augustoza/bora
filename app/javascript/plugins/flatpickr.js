import flatpickr from "flatpickr";

const flatpicker = () => { 
  flatpickr(".datepicker", {enableTime: true,});
}

export { flatpicker };