function menuToogle() {
  const menu = document.getElementsByClassName('hamburger--minus');
  const menu2 = document.getElementById("hamburger--minus");
  menu2.addEventListener("click", (event) => {
    event.preventDefault()
     menu2.classList.toggle("is-active");
  });
}
  // menu[0].addEventListener("click", (event) => {
  //   menu[0].classList.toggle("is-active");
  //   console.log('hey');
  // });

export {menuToogle};
