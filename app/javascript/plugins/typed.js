import Typed from 'typed.js';
const words = [
  "details",
  "our customers",
  "making the world a better place",
  "unicorns",
  "your business needs",
  "your success",
  "enjoying life",
  "beers",
  "KPI's"
  ]
const options = {
  strings: words,
  typeSpeed: 70,
  loop: true,
  // shuffle: true,
  // backDelay: 1000,
}

const typed = new Typed("#typed", options);


// const textHome = {
//   strings: ["Hi", "We are Focused", "We want to help our customers"],
//   typeSpeed: 50
// }

// const typed = new Typed("#home-entrance", textHome);
