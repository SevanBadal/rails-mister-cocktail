const initUpdateNavbarOnScroll = () => {
    console.log("In the method")
    const navbar = document.querySelector('.navbar-lewagon');
    const banner = document.querySelector('.banner');
    if (banner === null) {
        navbar.classList.add('navbar-lewagon-white');
    } else if (navbar) {
        window.addEventListener('scroll', () => {
            console.log("In the action")
            if (window.scrollY >= window.innerHeight) {
                navbar.classList.add('navbar-lewagon-white');
            } else {
                navbar.classList.remove('navbar-lewagon-white');
            }
        });
    }
}

export { initUpdateNavbarOnScroll };