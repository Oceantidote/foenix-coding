cookieClose = document.querySelector('.close-cookie-bar');
cookieBar = document.querySelector('.cookie-bar');

if (cookieBar) {
  setTimeout(function() {
      cookieBar.style.bottom = '0' + 'px'
    }, 2000
  )
}

if (cookieClose) {
  cookieClose.addEventListener('click', () => {
    cookieBar.style.bottom = '-200px'
    setTimeout(function() {
      cookieBar.style.display = 'none'
      }, 500
    )
  })
}
