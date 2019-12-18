cookieClose = document.querySelector('.close-cookie-bar');
cookieBar = document.querySelector('.cookie-bar');

if (cookieClose) {
  cookieClose.addEventListener('click', () => {
    cookieBar.style.bottom = '-200px'
    setTimeout(function() {
      cookieBar.style.display = 'none'
      }, 500
    )
  })
}
