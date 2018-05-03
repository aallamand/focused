function menuToogle() {
  const menu = document.getElementsByClassName('hamburger--minus');
  menu[0].addEventListener("click", (event) => {
    menu[0].classList.toggle("is-active");
  });
}
export {menuToogle};
