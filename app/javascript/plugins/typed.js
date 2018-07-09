import Typed from 'typed.js';
const words = [
  // "our customers",
  // "details",
  "making the world a better place",
  // "your business needs",
  // "your success",
  // "beers",
  // "KPI's",
  // "reports",
  // "being happy",
  // "our customers 😎",
  // "details 🔍",
  // "making the world a better place 🌈",
  // "your business needs 🚀",
  // "your success 💵",
  // "beers 🍺",
  // "KPI's 📈",
  // "reports 📊",
  // "being happy 😁"
  ]
const options = {
  strings: words,
  typeSpeed: 70,
  loop: true,
  // fadeOut: false,
  // fadeOutClass: 'typed-fade-out',
  // fadeOutDelay: 500,
  // shuffle: true,
  backDelay: 1000,
  backSpeed: 70,
}

const typed = new Typed("#typed", options);


// const textHome = {
//   strings: ["Hi", "We are Focused", "We want to help our customers"],
//   typeSpeed: 50
// }

// const typed = new Typed("#home-entrance", textHome);
